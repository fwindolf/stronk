// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseContainer _$$_ExerciseContainerFromJson(Map<String, dynamic> json) =>
    _$_ExerciseContainer(
      id: json['id'] as String?,
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ExerciseContainerToJson(
        _$_ExerciseContainer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'exercises': instance.exercises,
    };
