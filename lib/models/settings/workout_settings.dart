import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:stronk/models/settings/reminder.dart';

part 'workout_settings.freezed.dart';
part 'workout_settings.g.dart';

enum Timeframe {
  HoursPerDay,
  HoursPerWeek,
  SessionsPerWeek,
  SessionsPerTwoWeeks,
}

extension TimeframeExtension on Timeframe {
  String get name {
    switch (this) {
      case Timeframe.HoursPerDay:
        return "Hours / Day";
      case Timeframe.HoursPerWeek:
        return "Hours / Week";
      case Timeframe.SessionsPerWeek:
        return "Sessions / Week";
      case Timeframe.SessionsPerTwoWeeks:
        return "Sessions / 2 Weeks";
    }
  }

  int get max {
    switch (this) {
      case Timeframe.HoursPerDay:
        return 24;
      case Timeframe.HoursPerWeek:
        return 7 * 24;
      case Timeframe.SessionsPerWeek:
        return 2 * 7;
      case Timeframe.SessionsPerTwoWeeks:
        return 2 * 2 * 7;
    }
  }
}

@freezed
class SessionGoal with _$SessionGoal {
  const SessionGoal._();

  const factory SessionGoal({
    required Timeframe timeframe,
    required int count,
  }) = _SessionGoal;

  factory SessionGoal.empty() => SessionGoal(
        timeframe: Timeframe.SessionsPerWeek,
        count: 3,
      );

  factory SessionGoal.fromJson(Map<String, dynamic> json) =>
      _$SessionGoalFromJson(json);

  Map<String, dynamic> toDocument() => toJson();
}

enum Unit {
  Metric,
  Imperial,
}

extension UnitExtension on Unit {
  String get name {
    switch (this) {
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
    required Unit unit,
    SessionGoal? workoutGoal,
    @Default({}) Map<String, SessionGoal> challengeGoals,
    required List<ReminderTimeslot> slotChoices,
    @Default({}) Map<String, Reminder> reminders,
  }) = _WorkoutSettings;

  factory WorkoutSettings.empty() => const WorkoutSettings(
        unit: Unit.Metric,
        slotChoices: <ReminderTimeslot>[
          ReminderTimeslot(hourOfDay: 7),
          ReminderTimeslot(hourOfDay: 9),
          ReminderTimeslot(hourOfDay: 17),
          ReminderTimeslot(hourOfDay: 19),
          ReminderTimeslot(hourOfDay: 21),
        ],
      );

  factory WorkoutSettings.fromJson(Map<String, dynamic> json) =>
      _$WorkoutSettingsFromJson(json);

  Map<String, dynamic> toDocument() => toJson();
}
