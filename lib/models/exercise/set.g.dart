// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseSet _$$_ExerciseSetFromJson(Map<String, dynamic> json) =>
    _$_ExerciseSet(
      count: json['count'] as int,
      pauseSeconds: json['pauseSeconds'] as int,
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ExerciseSetToJson(_$_ExerciseSet instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pauseSeconds': instance.pauseSeconds,
      'weight': instance.weight,
    };
