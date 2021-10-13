// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Set _$$_SetFromJson(Map<String, dynamic> json) => _$_Set(
      count: json['count'] as int,
      pauseSeconds: json['pauseSeconds'] as int,
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_SetToJson(_$_Set instance) => <String, dynamic>{
      'count': instance.count,
      'pauseSeconds': instance.pauseSeconds,
      'weight': instance.weight,
    };
