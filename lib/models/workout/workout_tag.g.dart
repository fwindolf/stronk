// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkoutTag _$$_WorkoutTagFromJson(Map<String, dynamic> json) =>
    _$_WorkoutTag(
      id: json['id'] as String?,
      name: json['name'] as String,
      active: json['active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_WorkoutTagToJson(_$_WorkoutTag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
    };
