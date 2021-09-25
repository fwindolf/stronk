import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:stronk/models/settings/reminder.dart';

part 'workout_settings.freezed.dart';
part 'workout_settings.g.dart';

enum Timeframe {
  HoursPerDay,
  HoursPerWeek,
  WorkoutsPerWeek,
  WorkoutsPerTwoWeeks,
}

enum Unit {
  Kg,
  Lbs,
}

@freezed
class WorkoutSettings with _$WorkoutSettings {
  const WorkoutSettings._();

  const factory WorkoutSettings({
    String? id,
    required Map<Timeframe, int> sessionGoals,
    required Unit unit,
    required List<ReminderTimeslot> slotChoices,
    required List<Reminder> reminders,
  }) = _WorkoutSettings;

  factory WorkoutSettings.empty() => const WorkoutSettings(
        sessionGoals: {},
        unit: Unit.Kg,
        slotChoices: <ReminderTimeslot>[
          ReminderTimeslot(hourOfDay: 7),
          ReminderTimeslot(hourOfDay: 9),
          ReminderTimeslot(hourOfDay: 17),
          ReminderTimeslot(hourOfDay: 19),
          ReminderTimeslot(hourOfDay: 21),
        ],
        reminders: [],
      );

  factory WorkoutSettings.fromJson(Map<String, dynamic> json) =>
      _$WorkoutSettingsFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
