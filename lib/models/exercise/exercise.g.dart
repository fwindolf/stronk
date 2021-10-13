// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseExercise _$$_BaseExerciseFromJson(Map<String, dynamic> json) =>
    _$_BaseExercise(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      creator: json['creator'] as String?,
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => ExerciseTag.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      muscles: (json['muscles'] as List<dynamic>?)
              ?.map((e) => Muscle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      instructions: (json['instructions'] as List<dynamic>?)
              ?.map((e) => Instruction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isFavourite: json['isFavourite'] as bool? ?? false,
    );

Map<String, dynamic> _$$_BaseExerciseToJson(_$_BaseExercise instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'creator': instance.creator,
      'tags': instance.tags.map((e) => e.toJson()).toList(),
      'muscles': instance.muscles.map((e) => e.toJson()).toList(),
      'instructions': instance.instructions.map((e) => e.toJson()).toList(),
      'isFavourite': instance.isFavourite,
    };

_$_ExecutableExercise _$$_ExecutableExerciseFromJson(
        Map<String, dynamic> json) =>
    _$_ExecutableExercise(
      id: json['id'] as String?,
      exercise: Exercise.fromJson(json['exercise'] as Map<String, dynamic>),
      creator: json['creator'] as String,
      execution: Execution.fromJson(json['execution'] as Map<String, dynamic>),
      equipment: json['equipment'] == null
          ? null
          : Equipment.fromJson(json['equipment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ExecutableExerciseToJson(
        _$_ExecutableExercise instance) =>
    <String, dynamic>{
      'id': instance.id,
      'exercise': instance.exercise.toJson(),
      'creator': instance.creator,
      'execution': instance.execution.toJson(),
      'equipment': instance.equipment?.toJson(),
    };
