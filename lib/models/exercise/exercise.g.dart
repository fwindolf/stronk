// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Exercise _$$_ExerciseFromJson(Map<String, dynamic> json) => _$_Exercise(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      creator: json['creator'] as String?,
      configuration: BaseExerciseTypeConfiguration.fromJson(
          json['configuration'] as Map<String, dynamic>),
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
      'creator': instance.creator,
      'configuration': instance.configuration.toJson(),
      'tags': instance.tags.map((e) => e.toJson()).toList(),
      'muscles': instance.muscles.map((e) => e.toJson()).toList(),
      'instructions': instance.instructions.map((e) => e.toJson()).toList(),
      'isFavourite': instance.isFavourite,
    };
