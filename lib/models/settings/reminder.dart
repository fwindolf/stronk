import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'reminder.freezed.dart';
part 'reminder.g.dart';

enum ReminderTimeframe {
  Daily,
  Weekly,
  Biweekly, // Every two weeks
}

@freezed
class ReminderTimeslot with _$ReminderTimeslot {
  const ReminderTimeslot._();

  const factory ReminderTimeslot({
    int? dayOfWeek,
    required int hourOfDay,
  }) = _RequiredTimeslot;

  factory ReminderTimeslot.empty() => const ReminderTimeslot(hourOfDay: 0);

  factory ReminderTimeslot.fromJson(Map<String, dynamic> json) => _$ReminderTimeslotFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}

@freezed
class Reminder with _$Reminder {
  const Reminder._();

  const factory Reminder({
    required ReminderTimeframe timeframe,
    required List<ReminderTimeslot> selectedSlots,
    @Default(false) bool continuouslyRemind,
    @Default(true) bool snoozeAllowed,
    @Default(30) int snoozeMinutes,
  }) = _Reminder;

  static Map<int, String> minuteChoices = {
    5: "5 Minutes",
    10: "10 Minutes",
    15: "15 Minutes",
    30: "30 Minutes",
    45: "45 Minutes",
    60: "1 Hour",
    120: "2 Hours",
    180: "3 Hours",
  };

  factory Reminder.empty() => const Reminder(
        timeframe: ReminderTimeframe.Weekly,
        selectedSlots: [],
      );

  factory Reminder.fromJson(Map<String, dynamic> json) => _$ReminderFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');

  String get minutes {
    return minuteChoices[snoozeMinutes] ?? "$snoozeMinutes Minutes";
  }
}
