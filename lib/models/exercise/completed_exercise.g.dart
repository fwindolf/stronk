// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompletedExercise _$$_CompletedExerciseFromJson(Map<String, dynamic> json) =>
    _$_CompletedExercise(
      id: json['id'] as String?,
      creator: json['creator'] as String,
      source: Exercise.fromJson(json['source'] as Map<String, dynamic>),
      name: json['name'] as String,
      configuration: BaseExerciseTypeConfiguration.fromJson(
          json['configuration'] as Map<String, dynamic>),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$_CompletedExerciseToJson(
        _$_CompletedExercise instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creator': instance.creator,
      'source': instance.source,
      'name': instance.name,
      'configuration': instance.configuration,
      'timestamp': instance.timestamp.toIso8601String(),
    };
