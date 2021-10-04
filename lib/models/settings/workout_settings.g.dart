// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionGoal _$$_SessionGoalFromJson(Map<String, dynamic> json) =>
    _$_SessionGoal(
      timeframe: _$enumDecode(_$TimeframeEnumMap, json['timeframe']),
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_SessionGoalToJson(_$_SessionGoal instance) =>
    <String, dynamic>{
      'timeframe': _$TimeframeEnumMap[instance.timeframe],
      'count': instance.count,
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
  Timeframe.SessionsPerWeek: 'SessionsPerWeek',
  Timeframe.SessionsPerTwoWeeks: 'SessionsPerTwoWeeks',
};

_$_WorkoutSettings _$$_WorkoutSettingsFromJson(Map<String, dynamic> json) =>
    _$_WorkoutSettings(
      unit: _$enumDecode(_$UnitEnumMap, json['unit']),
      workoutGoal: json['workoutGoal'] == null
          ? null
          : SessionGoal.fromJson(json['workoutGoal'] as Map<String, dynamic>),
      challengeGoals: (json['challengeGoals'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, SessionGoal.fromJson(e as Map<String, dynamic>)),
          ) ??
          {},
      slotChoices: (json['slotChoices'] as List<dynamic>)
          .map((e) => ReminderTimeslot.fromJson(e as Map<String, dynamic>))
          .toList(),
      reminders: (json['reminders'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Reminder.fromJson(e as Map<String, dynamic>)),
          ) ??
          {},
    );

Map<String, dynamic> _$$_WorkoutSettingsToJson(_$_WorkoutSettings instance) =>
    <String, dynamic>{
      'unit': _$UnitEnumMap[instance.unit],
      'workoutGoal': instance.workoutGoal?.toJson(),
      'challengeGoals':
          instance.challengeGoals.map((k, e) => MapEntry(k, e.toJson())),
      'slotChoices': instance.slotChoices.map((e) => e.toJson()).toList(),
      'reminders': instance.reminders.map((k, e) => MapEntry(k, e.toJson())),
    };

const _$UnitEnumMap = {
  Unit.Metric: 'Metric',
  Unit.Imperial: 'Imperial',
};
