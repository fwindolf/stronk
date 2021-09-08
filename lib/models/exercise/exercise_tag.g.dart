// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseTag _$$_ExerciseTagFromJson(Map<String, dynamic> json) =>
    _$_ExerciseTag(
      id: json['id'] as String?,
      name: json['name'] as String,
      active: json['active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ExerciseTagToJson(_$_ExerciseTag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
    };
