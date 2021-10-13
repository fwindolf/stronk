// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompletedExercise _$$_CompletedExerciseFromJson(Map<String, dynamic> json) =>
    _$_CompletedExercise(
      id: json['id'] as String?,
      creator: json['creator'] as String,
      exercise: Exercise.fromJson(json['exercise'] as Map<String, dynamic>),
      execution: Execution.fromJson(json['execution'] as Map<String, dynamic>),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$_CompletedExerciseToJson(
        _$_CompletedExercise instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creator': instance.creator,
      'exercise': instance.exercise.toJson(),
      'execution': instance.execution.toJson(),
      'timestamp': instance.timestamp.toIso8601String(),
    };
