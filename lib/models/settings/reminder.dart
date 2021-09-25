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
    String? id,
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
    String? id,
    required ReminderTimeframe timeframe,
    required List<ReminderTimeslot> selectedSlots,
    @Default(false) bool continuouslyRemind,
    @Default(true) bool snoozeAllowed,
    @Default(30) int snoozeMinutes,
  }) = _Reminder;

  factory Reminder.empty() => const Reminder(timeframe: ReminderTimeframe.Weekly, selectedSlots: [],);

  factory Reminder.fromJson(Map<String, dynamic> json) => _$ReminderFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
