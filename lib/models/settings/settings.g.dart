// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Settings _$$_SettingsFromJson(Map<String, dynamic> json) => _$_Settings(
      id: json['id'] as String?,
      userSettings:
          UserSettings.fromJson(json['userSettings'] as Map<String, dynamic>),
      workoutSettings: WorkoutSettings.fromJson(
          json['workoutSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SettingsToJson(_$_Settings instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userSettings': instance.userSettings.toJson(),
      'workoutSettings': instance.workoutSettings.toJson(),
    };
