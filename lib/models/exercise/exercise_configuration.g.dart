// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
      weightKg: (json['weightKg'] as num).toDouble(),
      pauseSeconds: json['pauseSeconds'] as int,
    );

Map<String, dynamic> _$$_SetRepetitionConfigurationToJson(
        _$_SetRepetitionConfiguration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'repetitions': instance.repetitions,
      'sets': instance.sets,
      'weightKg': instance.weightKg,
      'pauseSeconds': instance.pauseSeconds,
    };

_$_ThreeToSevenConfiguration _$$_ThreeToSevenConfigurationFromJson(
        Map<String, dynamic> json) =>
    _$_ThreeToSevenConfiguration(
      id: json['id'] as String?,
      sets: json['sets'] as int? ?? 1,
      minRepetitions: json['minRepetitions'] as int? ?? 3,
      maxRepetitions: json['maxRepetitions'] as int? ?? 7,
      weightKg: (json['weightKg'] as num?)?.toDouble(),
      pauseSeconds: json['pauseSeconds'] as int? ?? 15,
    );

Map<String, dynamic> _$$_ThreeToSevenConfigurationToJson(
        _$_ThreeToSevenConfiguration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sets': instance.sets,
      'minRepetitions': instance.minRepetitions,
      'maxRepetitions': instance.maxRepetitions,
      'weightKg': instance.weightKg,
      'pauseSeconds': instance.pauseSeconds,
    };

_$_DoPauseConfiguration _$$_DoPauseConfigurationFromJson(
        Map<String, dynamic> json) =>
    _$_DoPauseConfiguration(
      id: json['id'] as String?,
      repetitions: json['repetitions'] as int,
      weightKg: (json['weightKg'] as num?)?.toDouble(),
      pauseSeconds: json['pauseSeconds'] as int? ?? 20,
    );

Map<String, dynamic> _$$_DoPauseConfigurationToJson(
        _$_DoPauseConfiguration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'repetitions': instance.repetitions,
      'weightKg': instance.weightKg,
      'pauseSeconds': instance.pauseSeconds,
    };

_$_HoldConfiguration _$$_HoldConfigurationFromJson(Map<String, dynamic> json) =>
    _$_HoldConfiguration(
      id: json['id'] as String?,
      weightKg: (json['weightKg'] as num?)?.toDouble(),
      holdSeconds: json['holdSeconds'] as int? ?? 60,
    );

Map<String, dynamic> _$$_HoldConfigurationToJson(
        _$_HoldConfiguration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weightKg': instance.weightKg,
      'holdSeconds': instance.holdSeconds,
    };

_$_FlowConfiguration _$$_FlowConfigurationFromJson(Map<String, dynamic> json) =>
    _$_FlowConfiguration(
      id: json['id'] as String?,
      repetitions: json['repetitions'] as int,
      weightKg: (json['weightKg'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_FlowConfigurationToJson(
        _$_FlowConfiguration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'repetitions': instance.repetitions,
      'weightKg': instance.weightKg,
    };
