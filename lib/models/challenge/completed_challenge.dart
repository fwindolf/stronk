import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stronk/models/exercise/completed_exercise.dart';
import 'package:stronk/models/challenge/challenge.dart';

part 'completed_challenge.freezed.dart';
part 'completed_challenge.g.dart';

@freezed
class CompletedChallenge with _$CompletedChallenge {
  const CompletedChallenge._();

  const factory CompletedChallenge({
    String? id,
    required String creator,
    required Challenge challenge,
    required DateTime startTime,
    required DateTime? finishTime,
    required CompletedExercise exercise,
  }) = _CompletedChallenge;

  factory CompletedChallenge.fromChallenge(String userId, Challenge challenge) =>
      CompletedChallenge(
        creator: userId,
        challenge: challenge,
        startTime: DateTime.now(),
        finishTime: null,
        exercise: CompletedExercise.fromExercise(userId, challenge.exercise),
      );

  factory CompletedChallenge.fromJson(Map<String, dynamic> json) =>
      _$CompletedChallengeFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
