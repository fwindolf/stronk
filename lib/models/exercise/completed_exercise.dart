import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'exercise.dart';
import 'exercise_configuration.dart';

part 'completed_exercise.freezed.dart';
part 'completed_exercise.g.dart';

@freezed
class CompletedExercise with _$CompletedExercise {
  const CompletedExercise._();

  const factory CompletedExercise({
    String? id,
    required String creator,
    required Exercise source,
    required String name,
    required ExerciseTypeConfiguration configuration,
    required DateTime timestamp,
  }) = _CompletedExercise;

  factory CompletedExercise.fromJson(Map<String, dynamic> json) =>
      _$CompletedExerciseFromJson(json);

  factory CompletedExercise.fromExercise(String userId, Exercise exercise) => CompletedExercise(
      creator: userId,
      source: exercise,
      name: exercise.name,
      configuration: exercise.configuration,
      timestamp: DateTime.now());

  factory CompletedExercise.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return CompletedExercise.fromJson(data).copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
