// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequiredTimeslot _$$_RequiredTimeslotFromJson(Map<String, dynamic> json) =>
    _$_RequiredTimeslot(
      hourOfDay: json['hourOfDay'] as int,
    );

Map<String, dynamic> _$$_RequiredTimeslotToJson(_$_RequiredTimeslot instance) =>
    <String, dynamic>{
      'hourOfDay': instance.hourOfDay,
    };

_$_Reminder _$$_ReminderFromJson(Map<String, dynamic> json) => _$_Reminder(
      timeframe: _$enumDecode(_$ReminderTimeframeEnumMap, json['timeframe']),
      selectedSlots: (json['selectedSlots'] as List<dynamic>)
          .map((e) => ReminderTimeslot.fromJson(e as Map<String, dynamic>))
          .toList(),
      continuouslyRemind: json['continuouslyRemind'] as bool? ?? false,
      snoozeAllowed: json['snoozeAllowed'] as bool? ?? true,
      snoozeMinutes: json['snoozeMinutes'] as int? ?? 30,
    );

Map<String, dynamic> _$$_ReminderToJson(_$_Reminder instance) =>
    <String, dynamic>{
      'timeframe': _$ReminderTimeframeEnumMap[instance.timeframe],
      'selectedSlots': instance.selectedSlots.map((e) => e.toJson()).toList(),
      'continuouslyRemind': instance.continuouslyRemind,
      'snoozeAllowed': instance.snoozeAllowed,
      'snoozeMinutes': instance.snoozeMinutes,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$ReminderTimeframeEnumMap = {
  ReminderTimeframe.Daily: 'Daily',
  ReminderTimeframe.Weekly: 'Weekly',
  ReminderTimeframe.Biweekly: 'Biweekly',
};
