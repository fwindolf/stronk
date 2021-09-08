// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Exercise _$$_ExerciseFromJson(Map<String, dynamic> json) => _$_Exercise(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      type: _$enumDecode(_$ExerciseTypeEnumMap, json['type']),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => ExerciseTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      muscles: (json['muscles'] as List<dynamic>)
          .map((e) => Muscle.fromJson(e as Map<String, dynamic>))
          .toList(),
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => Instruction.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFavourite: json['isFavourite'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ExerciseToJson(_$_Exercise instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': _$ExerciseTypeEnumMap[instance.type],
      'tags': instance.tags,
      'muscles': instance.muscles,
      'instructions': instance.instructions,
      'isFavourite': instance.isFavourite,
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
  ExerciseType.ThreeToSeve: 'ThreeToSeve',
  ExerciseType.DoPause: 'DoPause',
  ExerciseType.Hold: 'Hold',
  ExerciseType.Flow: 'Flow',
};
