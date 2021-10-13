// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repetition_execution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SetRepetitionExecution _$$_SetRepetitionExecutionFromJson(
        Map<String, dynamic> json) =>
    _$_SetRepetitionExecution(
      id: json['id'] as String?,
      sets: (json['sets'] as List<dynamic>)
          .map((e) => Set.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SetRepetitionExecutionToJson(
        _$_SetRepetitionExecution instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sets': instance.sets.map((e) => e.toJson()).toList(),
    };
