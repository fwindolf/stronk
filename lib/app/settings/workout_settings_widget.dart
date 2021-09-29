import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/common_widgets/dial_widgets.dart';
import 'package:stronk/app/settings/enum_dialog.dart';
import 'package:stronk/app/settings/util.dart';
import 'package:stronk/controllers/auth_controller.dart';
import 'package:stronk/controllers/settings_controller.dart';
import 'package:stronk/models/settings/reminder.dart';
import 'package:stronk/models/settings/settings.dart';
import 'package:stronk/models/settings/workout_settings.dart';

class UnitsItem extends StatelessWidget {
  final Unit unit;
  final Function updateUnit;

  const UnitsItem({
    required this.unit,
    required this.updateUnit,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
                unit.name,
                style: TextStyle(fontSize: 18),
              ),
              flex: 2,
            ),
          ],
        ),
      ),
      onTap: () async {
        final _unit = await EnumDialog.show<Unit>(
          context,
          "Select Units",
          Unit.values.asMap().map((_, value) => MapEntry(value, value.name)),
          unit,
        );
        if (_unit != null) {
          updateUnit(_unit);
        }
      },
    );
  }
}

class GoalItem extends StatelessWidget {
  final Timeframe timeframe;
  final int count;

  final Function(BuildContext) onShowDialog;
  final Function() onDelete;
  final Function(Timeframe, int) onUpdate;

  const GoalItem({
    required this.timeframe,
    required this.count,
    required this.onShowDialog,
    required this.onDelete,
    required this.onUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Text(
                    timeframe.name,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onTap: () async {
                    final Timeframe? _timeframe = await onShowDialog(context);
                    if (_timeframe != null) {
                      onUpdate(_timeframe, 1);
                    }
                  },
                ),
                Dial<int>(
                  value: count,
                  onUpdate: (int count) => onUpdate(timeframe, count),
                  increment: 1,
                  minv: 1,
                  maxv: timeframe.max,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              iconSize: 26,
              onPressed: () => onDelete(),
              icon: Icon(Icons.delete),
              splashRadius: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class SessionGoalSettingsItem extends StatelessWidget {
  final SessionGoal? sessionGoal;
  final Function updateSessionGoal;

  const SessionGoalSettingsItem({
    required this.sessionGoal,
    required this.updateSessionGoal,
  });

  _showGoalsDialog(BuildContext context) async {
    return EnumDialog.show(
      context,
      "Select how you want to measure your goals",
      Timeframe.values.asMap().map((_, value) => MapEntry(value, value.name)),
      Timeframe.values.first,
    );
  }

  Widget _buildEmpty(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 23.5),
        child: Text(
          "Define your goals",
          style: TextStyle(fontSize: 18),
        ),
      ),
      onTap: () async {
        final timeframe = await _showGoalsDialog(context);
        if (timeframe != null) {
          updateSessionGoal(SessionGoal(timeframe: timeframe, count: 1));
        }
      },
    );
  }

  Widget _buildContent(BuildContext context) {
    return GoalItem(
      timeframe: sessionGoal!.timeframe,
      count: sessionGoal!.count,
      onUpdate: (timeframe, count) => updateSessionGoal(
        sessionGoal?.copyWith(
          timeframe: timeframe,
          count: count,
        ),
      ),
      onDelete: () => updateSessionGoal(null),
      onShowDialog: _showGoalsDialog,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 4.0,
              vertical: 12.0,
            ),
            child: Text(
              "Sessions",
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
          child: sessionGoal == null
              ? _buildEmpty(context)
              : _buildContent(context),
        ),
      ],
    );
  }
}

class ReminderSlotsSettingsItem extends StatelessWidget {
  final List<ReminderTimeslot> slotChoices;
  final Function updateSlots;

  const ReminderSlotsSettingsItem({
    required this.slotChoices,
    required this.updateSlots,
  });

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
    ReminderTimeslot slot,
  ) async {
    final selected = slotChoices
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
    if (hourOfDay != null) {
      updateSlots(
        slotChoices
          ..remove(slot)
          ..add(ReminderTimeslot(hourOfDay: hourOfDay))
          ..sort((a, b) => a.hourOfDay - b.hourOfDay),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            // Flexible(
            //   flex: 2,
            //   child: Container(),
            // ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: slotChoices.map(
            (slot) {
              return Flexible(
                fit: FlexFit.loose,
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
                    slot,
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}

class WorkoutSettingsWidget extends ConsumerWidget {
  const WorkoutSettingsWidget();

  _buildContent(Settings settings, BuildContext context, WidgetRef ref) {
    final workoutSettings = settings.workoutSettings;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UnitsItem(
            unit: workoutSettings.unit,
            updateUnit: (unit) => updateSettings(
              ref,
              settings.copyWith(
                workoutSettings: workoutSettings.copyWith(unit: unit),
              ),
            ),
          ),
          SessionGoalSettingsItem(
            sessionGoal: workoutSettings.sessionGoal,
            updateSessionGoal: (sessionGoal) => updateSettings(
              ref,
              settings.copyWith(
                workoutSettings: workoutSettings.copyWith(
                  sessionGoal: sessionGoal,
                ),
              ),
            ),
          ),
          ReminderSlotsSettingsItem(
            slotChoices: workoutSettings.slotChoices,
            updateSlots: (slotChoices) => updateSettings(
              ref,
              settings.copyWith(
                workoutSettings: workoutSettings.copyWith(
                  slotChoices: slotChoices,
                ),
              ),
            ),
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
                    "Reminders",
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
