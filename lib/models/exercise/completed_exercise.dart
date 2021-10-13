import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stronk/models/exercise/exercise.dart';
import 'package:stronk/models/exercise/exercise_types.dart';
import 'package:stronk/models/exercise/set.dart';

part 'completed_exercise.freezed.dart';
part 'completed_exercise.g.dart';

@freezed
class CompletedExercise with _$CompletedExercise {
  const CompletedExercise._();

  const factory CompletedExercise({
    String? id,
    required String exerciseId,
    required String exerciseName,
    required String creator,
    required ExerciseType type,
    required List<ExerciseSet> sets,
    required DateTime timeStart,
    required DateTime? timeFinish,
  }) = _CompletedExercise;

  factory CompletedExercise.fromExercise({
    required Exercise exercise,
    String? creator,
    required DateTime start,
    DateTime? finish,
  }) =>
      CompletedExercise(
        exerciseId: exercise.id,
        exerciseName: exercise.name,
        creator: creator ?? exercise.creator!,
        type: exercise.configuration.type,
        sets: exercise.configuration.sets,
        timeStart: start,
        timeFinish: finish,
      );

  factory CompletedExercise.fromJson(Map<String, dynamic> json) =>
      _$CompletedExerciseFromJson(json);

  factory CompletedExercise.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return CompletedExercise.fromJson(data).copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
