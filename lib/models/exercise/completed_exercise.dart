import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stronk/models/exercise/exercise.dart';
import 'package:stronk/models/muscle/muscle.dart';
import 'package:stronk/models/exercise/instruction.dart';
import 'package:stronk/models/exercise/exercise_tag.dart';

import 'execution.dart';

part 'completed_exercise.freezed.dart';
part 'completed_exercise.g.dart';

@freezed
class CompletedExercise with _$CompletedExercise {
  const CompletedExercise._();

  @Implements(Exercise)
  const factory CompletedExercise({
    String? id,
    required String creator,
    required Exercise exercise,
    required Execution execution,
    required DateTime timestamp,
  }) = _CompletedExercise;

  factory CompletedExercise.fromJson(Map<String, dynamic> json) =>
      _$CompletedExerciseFromJson(json);

  factory CompletedExercise.fromExercise(ExecutableExercise source) =>
      CompletedExercise(
        creator: source.creator,
        exercise: source.exercise,
        execution: source.execution,
        timestamp: DateTime.now(),
      );

  factory CompletedExercise.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return CompletedExercise.fromJson(data).copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');

  bool belongsTo(User? user) => (user == null) ? false : creator == user.uid;

  @override
  String? get id => id ?? exercise.id;
  String get name => exercise.name;
  String get description => exercise.description;
  bool get isFavourite => exercise.isFavourite;
  List<ExerciseTag> get tags => exercise.tags;
  List<Muscle> get muscles => exercise.muscles;
  List<Instruction> get instructions => exercise.instructions;
  double get load => exercise.load;
}
