// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkoutSettings _$$_WorkoutSettingsFromJson(Map<String, dynamic> json) =>
    _$_WorkoutSettings(
      sessionGoals: (json['sessionGoals'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(_$enumDecode(_$TimeframeEnumMap, k), e as int),
      ),
      unit: _$enumDecode(_$UnitEnumMap, json['unit']),
      slotChoices: (json['slotChoices'] as List<dynamic>)
          .map((e) => ReminderTimeslot.fromJson(e as Map<String, dynamic>))
          .toList(),
      reminders: (json['reminders'] as List<dynamic>)
          .map((e) => Reminder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WorkoutSettingsToJson(_$_WorkoutSettings instance) =>
    <String, dynamic>{
      'sessionGoals': instance.sessionGoals
          .map((k, e) => MapEntry(_$TimeframeEnumMap[k], e)),
      'unit': _$UnitEnumMap[instance.unit],
      'slotChoices': instance.slotChoices.map((e) => e.toJson()).toList(),
      'reminders': instance.reminders.map((e) => e.toJson()).toList(),
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

const _$TimeframeEnumMap = {
  Timeframe.HoursPerDay: 'HoursPerDay',
  Timeframe.HoursPerWeek: 'HoursPerWeek',
  Timeframe.WorkoutsPerWeek: 'WorkoutsPerWeek',
  Timeframe.WorkoutsPerTwoWeeks: 'WorkoutsPerTwoWeeks',
};

const _$UnitEnumMap = {
  Unit.Metric: 'Metric',
  Unit.Imperial: 'Imperial',
};
