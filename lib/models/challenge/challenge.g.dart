// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Challenge _$$_ChallengeFromJson(Map<String, dynamic> json) => _$_Challenge(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      creator: json['creator'] as String?,
      exercise:
          ExecutableExercise.fromJson(json['exercise'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$_ChallengeToJson(_$_Challenge instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'creator': instance.creator,
      'exercise': instance.exercise.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };
