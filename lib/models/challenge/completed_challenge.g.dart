// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_challenge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompletedChallenge _$$_CompletedChallengeFromJson(
        Map<String, dynamic> json) =>
    _$_CompletedChallenge(
      id: json['id'] as String?,
      creator: json['creator'] as String,
      challenge: Challenge.fromJson(json['challenge'] as Map<String, dynamic>),
      startTime: DateTime.parse(json['startTime'] as String),
      finishTime: json['finishTime'] == null
          ? null
          : DateTime.parse(json['finishTime'] as String),
    );

Map<String, dynamic> _$$_CompletedChallengeToJson(
        _$_CompletedChallenge instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creator': instance.creator,
      'challenge': instance.challenge.toJson(),
      'startTime': instance.startTime.toIso8601String(),
      'finishTime': instance.finishTime?.toIso8601String(),
    };
