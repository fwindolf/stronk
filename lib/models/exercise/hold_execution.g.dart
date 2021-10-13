// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hold_execution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimedHoldExecution _$$_TimedHoldExecutionFromJson(
        Map<String, dynamic> json) =>
    _$_TimedHoldExecution(
      id: json['id'] as String?,
      sets: (json['sets'] as List<dynamic>)
          .map((e) => Set.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TimedHoldExecutionToJson(
        _$_TimedHoldExecution instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sets': instance.sets.map((e) => e.toJson()).toList(),
    };
