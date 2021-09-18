// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExerciseTypeConfiguration _$ExerciseTypeConfigurationFromJson(
        Map<String, dynamic> json) =>
    ExerciseTypeConfiguration();

Map<String, dynamic> _$ExerciseTypeConfigurationToJson(
        ExerciseTypeConfiguration instance) =>
    <String, dynamic>{};

BaseExerciseTypeConfiguration _$BaseExerciseTypeConfigurationFromJson(
        Map<String, dynamic> json) =>
    BaseExerciseTypeConfiguration();

Map<String, dynamic> _$BaseExerciseTypeConfigurationToJson(
        BaseExerciseTypeConfiguration instance) =>
    <String, dynamic>{};

_$_SetRepetitionConfiguration _$$_SetRepetitionConfigurationFromJson(
        Map<String, dynamic> json) =>
    _$_SetRepetitionConfiguration(
      id: json['id'] as String?,
      repetitions: json['repetitions'] as int,
      sets: json['sets'] as int,
      pauseSeconds: json['pauseSeconds'] as int,
    );

Map<String, dynamic> _$$_SetRepetitionConfigurationToJson(
        _$_SetRepetitionConfiguration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'repetitions': instance.repetitions,
      'sets': instance.sets,
      'pauseSeconds': instance.pauseSeconds,
    };

_$_ThreeToSevenConfiguration _$$_ThreeToSevenConfigurationFromJson(
        Map<String, dynamic> json) =>
    _$_ThreeToSevenConfiguration(
      id: json['id'] as String?,
      minRepetitions: json['minRepetitions'] as int? ?? 3,
      maxRepetitions: json['maxRepetitions'] as int? ?? 7,
      pauseSeconds: json['pauseSeconds'] as int? ?? 20,
    );

Map<String, dynamic> _$$_ThreeToSevenConfigurationToJson(
        _$_ThreeToSevenConfiguration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'minRepetitions': instance.minRepetitions,
      'maxRepetitions': instance.maxRepetitions,
      'pauseSeconds': instance.pauseSeconds,
    };

_$_DoPauseConfiguration _$$_DoPauseConfigurationFromJson(
        Map<String, dynamic> json) =>
    _$_DoPauseConfiguration(
      id: json['id'] as String?,
      repetitions: json['repetitions'] as int,
      pauseSeconds: json['pauseSeconds'] as int? ?? 20,
    );

Map<String, dynamic> _$$_DoPauseConfigurationToJson(
        _$_DoPauseConfiguration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'repetitions': instance.repetitions,
      'pauseSeconds': instance.pauseSeconds,
    };

_$_HoldConfiguration _$$_HoldConfigurationFromJson(Map<String, dynamic> json) =>
    _$_HoldConfiguration(
      id: json['id'] as String?,
      holdSeconds: json['holdSeconds'] as int? ?? 60,
    );

Map<String, dynamic> _$$_HoldConfigurationToJson(
        _$_HoldConfiguration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'holdSeconds': instance.holdSeconds,
    };

_$_FlowConfiguration _$$_FlowConfigurationFromJson(Map<String, dynamic> json) =>
    _$_FlowConfiguration(
      id: json['id'] as String?,
      repetitions: json['repetitions'] as int,
    );

Map<String, dynamic> _$$_FlowConfigurationToJson(
        _$_FlowConfiguration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'repetitions': instance.repetitions,
    };
