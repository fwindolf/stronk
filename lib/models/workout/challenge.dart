import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:stronk/models/exercise/exercise.dart';

part 'challenge.freezed.dart';
part 'challenge.g.dart';

@freezed
class Challenge with _$Challenge {
  const Challenge._();

  const factory Challenge({
    String? id,
    required String name,
    required String? description,
    required String? creator,
    required Exercise exercise,
    required DateTime startDate,
    required DateTime? endDate,
  }) = _Challenge;

  factory Challenge.fromJson(Map<String, dynamic> json) => _$ChallengeFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
