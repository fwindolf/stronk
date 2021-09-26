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

extension TimeframeExtension on Timeframe {
  String get name{
    switch(this) {
      case Timeframe.HoursPerDay:
        return "Hours / Day";
      case Timeframe.HoursPerWeek:
        return "Hours / Week";
      case Timeframe.WorkoutsPerWeek:
        return "Workouts / Week";
      case Timeframe.WorkoutsPerTwoWeeks:
        return "Workouts / 2 Weeks";
    }
  }
}

enum Unit {
  Metric,
  Imperial,
}

extension UnitExtension on Unit {
  String get name {
    switch(this) {
      case Unit.Metric:
        return "Metric (kilogram, kilometers, meters)";
      case Unit.Imperial:
        return "Imperial (pounds, miles, inches)";
    }
  }
}

@freezed
class WorkoutSettings with _$WorkoutSettings {
  const WorkoutSettings._();

  const factory WorkoutSettings({
    required Map<Timeframe, int> sessionGoals,
    required Unit unit,
    required List<ReminderTimeslot> slotChoices,
    required List<Reminder> reminders,
  }) = _WorkoutSettings;

  factory WorkoutSettings.empty() => const WorkoutSettings(
        sessionGoals: {},
        unit: Unit.Metric,
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
