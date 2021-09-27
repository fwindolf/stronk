import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/settings/enum_dialog.dart';
import 'package:stronk/app/settings/util.dart';
import 'package:stronk/controllers/auth_controller.dart';
import 'package:stronk/controllers/settings_controller.dart';
import 'package:stronk/models/settings/reminder.dart';
import 'package:stronk/models/settings/settings.dart';
import 'package:stronk/models/settings/workout_settings.dart';

class WorkoutSettingsWidget extends ConsumerWidget {
  const WorkoutSettingsWidget();

  String _hourToTime(int hour) {
    if (hour == 0 || hour == 24)
      return "midnight";
    else if (hour == 12)
      return "noon";
    else
      return "${hour % 12} ${hour <= 12 ? 'am' : 'pm'}";
  }

  Widget _buildSlotSelection(int hour, color) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(width: 1, color: Colors.grey),
        color: color,
      ),
      child: Text(_hourToTime(hour)),
    );
  }

  void _showSlotSelection(
    BuildContext context,
    WidgetRef ref,
    Settings settings,
    ReminderTimeslot slot,
  ) async {
    final choices = settings.workoutSettings.slotChoices;
    final selected = choices
        .where((s) => s.hourOfDay != slot.hourOfDay)
        .map((s) => s.hourOfDay)
        .toList();
    final hourOfDay = await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(
            "Select Slots for Reminders",
            style: Theme.of(context).textTheme.headline5,
          ),
          contentPadding: const EdgeInsets.all(20.0),
          children: [
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              runAlignment: WrapAlignment.center,
              children: List.generate(24, (i) => i + 1).map((hour) {
                if (hour == slot.hourOfDay) {
                  // Is clicked on selection -> don't change anything if clicked
                  return InkWell(
                    onTap: () => Navigator.pop(context),
                    child: _buildSlotSelection(hour, Colors.grey.shade400),
                  );
                } else if (selected.contains(hour)) {
                  // Is another option, already selected -> cannot click
                  return _buildSlotSelection(hour, Colors.grey.shade300);
                } else {
                  // Change to new selected hour
                  return InkWell(
                    onTap: () => Navigator.pop(context, hour),
                    child: _buildSlotSelection(hour, null),
                  );
                }
              }).toList(),
            ),
          ],
        );
      },
    );
    if (hourOfDay == null) return;

    updateSettings(
      ref,
      settings.copyWith(
        workoutSettings: settings.workoutSettings.copyWith(
          slotChoices: choices
            ..remove(slot)
            ..add(ReminderTimeslot(hourOfDay: hourOfDay))
            ..sort((a, b) => a.hourOfDay - b.hourOfDay),
        ),
      ),
    );
  }

  _buildContent(Settings settings, BuildContext context, WidgetRef ref) {
    final workoutSettings = settings.workoutSettings;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4.0,
                vertical: 12.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "Units",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: Text(
                      workoutSettings.unit.name,
                      style: TextStyle(fontSize: 18),
                    ),
                    flex: 2,
                  ),
                ],
              ),
            ),
            onTap: () async {
              final unit = await EnumDialog.show<Unit>(
                context,
                "Select Units",
                Unit.values
                    .asMap()
                    .map((_, value) => MapEntry(value, value.name)),
                workoutSettings.unit,
              );
              if (unit != null) {
                updateSettings(
                  ref,
                  settings.copyWith(
                    workoutSettings: workoutSettings.copyWith(
                      unit: unit,
                    ),
                  ),
                );
              }
            },
          ),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4.0,
                    vertical: 12.0,
                  ),
                  child: Text(
                    "Reminder Timeslots",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: settings.workoutSettings.slotChoices.map(
              (slot) {
                return Expanded(
                  child: InkWell(
                    child: Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(width: 1, color: Colors.grey),
                      ),
                      child: Center(
                        child: Text(_hourToTime(slot.hourOfDay)),
                      ),
                    ),
                    onTap: () => _showSlotSelection(
                      context,
                      ref,
                      settings,
                      slot,
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }

  _buildLoading() {
    return Center(child: CircularProgressIndicator());
  }

  _buildError(error) {
    return Center(child: Text(error.toString()));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.read(authControllerProvider).maybeWhen(
        data: (user) => ref.watch(settingsControllerProvider(user)).when(
              data: (settings) => _buildContent(settings, context, ref),
              loading: () => _buildLoading(),
              error: (error, _) => _buildError(error),
            ),
        orElse: () => _buildError("Not logged in!"));
  }
}
