// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Workout _$$_WorkoutFromJson(Map<String, dynamic> json) => _$_Workout(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => WorkoutTag.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isFavourite: json['isFavourite'] as bool? ?? false,
    );

Map<String, dynamic> _$$_WorkoutToJson(_$_Workout instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'tags': instance.tags,
      'isFavourite': instance.isFavourite,
    };
