// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompletedWorkout _$$_CompletedWorkoutFromJson(Map<String, dynamic> json) =>
    _$_CompletedWorkout(
      id: json['id'] as String?,
      creator: json['creator'] as String,
      workout: Workout.fromJson(json['workout'] as Map<String, dynamic>),
      startTime: DateTime.parse(json['startTime'] as String),
      finishTime: json['finishTime'] == null
          ? null
          : DateTime.parse(json['finishTime'] as String),
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => CompletedExercise.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CompletedWorkoutToJson(_$_CompletedWorkout instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creator': instance.creator,
      'workout': instance.workout,
      'startTime': instance.startTime.toIso8601String(),
      'finishTime': instance.finishTime?.toIso8601String(),
      'exercises': instance.exercises,
    };
