// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompletedExercise _$$_CompletedExerciseFromJson(Map<String, dynamic> json) =>
    _$_CompletedExercise(
      id: json['id'] as String?,
      exerciseId: json['exerciseId'] as String,
      exerciseName: json['exerciseName'] as String,
      creator: json['creator'] as String,
      type: _$enumDecode(_$ExerciseTypeEnumMap, json['type']),
      sets: (json['sets'] as List<dynamic>)
          .map((e) => ExerciseSet.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeStart: DateTime.parse(json['timeStart'] as String),
      timeFinish: json['timeFinish'] == null
          ? null
          : DateTime.parse(json['timeFinish'] as String),
    );

Map<String, dynamic> _$$_CompletedExerciseToJson(
        _$_CompletedExercise instance) =>
    <String, dynamic>{
      'id': instance.id,
      'exerciseId': instance.exerciseId,
      'exerciseName': instance.exerciseName,
      'creator': instance.creator,
      'type': _$ExerciseTypeEnumMap[instance.type],
      'sets': instance.sets.map((e) => e.toJson()).toList(),
      'timeStart': instance.timeStart.toIso8601String(),
      'timeFinish': instance.timeFinish?.toIso8601String(),
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

const _$ExerciseTypeEnumMap = {
  ExerciseType.SetRepetition: 'SetRepetition',
  ExerciseType.ThreeToSeven: 'ThreeToSeven',
  ExerciseType.DoPause: 'DoPause',
  ExerciseType.Hold: 'Hold',
  ExerciseType.Flow: 'Flow',
};
