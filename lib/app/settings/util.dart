import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/models/settings/reminder.dart';
import 'package:stronk/models/settings/settings.dart';
import 'package:stronk/controllers/auth_controller.dart';
import 'package:stronk/controllers/settings_controller.dart';
import 'package:stronk/models/settings/workout_settings.dart';
import 'package:stronk/repositories/settings_repository.dart';

String hourToTime(int hour) {
  if (hour == 0 || hour == 24)
    return "midnight";
  else if (hour == 12)
    return "noon";
  else
    return "${hour % 12} ${hour <= 12 ? 'am' : 'pm'}";
}

bool containsHour(slots, slot) => slots.map((s) => s.hourOfDay).contains(slot.hourOfDay);
bool containsHourAndDay(slots, slot) => slots.contains(slot);

void updateSlots(
  ReminderTimeslot oldSlot,
  ReminderTimeslot newSlot,
  WorkoutSettings workoutSettings,
  Function(WorkoutSettings) updateWorkoutSettings,
) {
  print(oldSlot);
  print(newSlot);
  final slotChoices = List<ReminderTimeslot>.from(workoutSettings.slotChoices)
    ..remove(oldSlot)
    ..add(newSlot);
  assert(slotChoices.length == workoutSettings.slotChoices.length);

  print(slotChoices);

  final reminders = workoutSettings.reminders.map(
    (name, reminder) => MapEntry(
      name,
      reminder.copyWith(
        selectedSlots: reminder.selectedSlots
            .map((slot) => slot.hourOfDay == oldSlot.hourOfDay
                ? slot.copyWith(hourOfDay: newSlot.hourOfDay)
                : slot)
            .toList(),
      ),
    ),
  );

  updateWorkoutSettings(
    workoutSettings.copyWith(
      slotChoices: slotChoices,
      reminders: reminders,
    ),
  );
}

void updateSettings(WidgetRef ref, Settings settings) {
  ref.read(authControllerProvider).maybeWhen(
        data: (user) {
          ref.read(settingsRepositoryProvider).update(
                userId: user.uid,
                settings: settings,
              );
          ref.read(settingsControllerProvider(user).notifier).retrieveItems();
        },
        orElse: () {},
      );
}

class SettingsRowItem<T> extends StatelessWidget {
  final String title;

  final T data;
  final Function(T item) getValue;
  final Function(BuildContext context)? changeValue;

  const SettingsRowItem({
    required this.title,
    required this.data,
    required this.getValue,
    this.changeValue,
  });

  @override
  Widget build(BuildContext context) {
    final value = getValue(data);
    final valueWidget = (value.runtimeType == String)
        ? Text(
            value,
            style: TextStyle(fontSize: 18),
          )
        : value;

    final child = Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 4.0,
        vertical: 12.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            flex: 1,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: valueWidget,
            ),
            flex: 2,
          ),
        ],
      ),
    );

    if (changeValue == null) {
      return Container(child: child);
    } else {
      return InkWell(
        child: child,
        onTap: () => changeValue!(context),
      );
    }
  }
}

class SettingsBlockWidget<T> extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
