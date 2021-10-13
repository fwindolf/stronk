import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stronk/models/exercise/instruction.dart';
import 'package:stronk/models/exercise/execution.dart';
import 'package:stronk/models/exercise/exercise_tag.dart';
import 'package:stronk/models/freezed.dart';
import 'package:stronk/models/muscle/muscle.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'equipment.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

enum ExerciseType {
  Repetition,
  Hold,
}

abstract class Exercise extends FreezedClass {
  String? get id;
  String get name;
  String get description;
  String? get creator;
  bool get isFavourite;
  List<ExerciseTag> get tags;
  List<Muscle> get muscles;
  List<Instruction> get instructions;

  Execution? get execution;

  double get load;

  bool belongsTo(User? user);

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      throw UnimplementedError();
  factory Exercise.fromDocument(DocumentSnapshot doc) =>
      throw UnimplementedError();
}

@freezed
class BaseExercise with _$BaseExercise {
  const BaseExercise._();

  @Implements(Exercise)
  const factory BaseExercise({
    String? id,
    required String name,
    required String description,
    required String? creator,
    @Default([]) List<ExerciseTag> tags,
    @Default([]) List<Muscle> muscles,
    @Default([]) List<Instruction> instructions,
    @Default(false) bool isFavourite,
  }) = _BaseExercise;

  factory BaseExercise.empty({
    String? userId,
  }) =>
      BaseExercise(
        creator: userId,
        name: "New Exercise",
        description: "",
        muscles: [],
        tags: [],
        instructions: [],
      );

  factory BaseExercise.fromJson(Map<String, dynamic> json) =>
      _$BaseExerciseFromJson(json);

  factory BaseExercise.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return BaseExercise.fromJson(data).copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');

  bool belongsTo(User? user) {
    if (creator == null || user == null) return false;
    return creator == user.uid;
  }

  Execution? get execution => null;

  double get load => execution?.totalLoad ?? 0.0;
}

@freezed
class ExecutableExercise with _$ExecutableExercise {
  const ExecutableExercise._();

  @Implements(Exercise)
  const factory ExecutableExercise({
    String? id,
    required Exercise exercise,
    required String creator,
    required Execution execution,
    Equipment? equipment,
  }) = _ExecutableExercise;

  factory ExecutableExercise.fromJson(Map<String, dynamic> json) =>
      _$ExecutableExerciseFromJson(json);

  factory ExecutableExercise.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return ExecutableExercise.fromJson(data);
  }

  Map<String, dynamic> toDocument() => toJson();

  bool belongsTo(User? user) => user == null ? false : creator == user.uid;

  @override
  String? get id => id ?? exercise.id;
  String get name => exercise.name;
  String get description => exercise.description;
  bool get isFavourite => exercise.isFavourite;
  List<ExerciseTag> get tags => exercise.tags;
  List<Muscle> get muscles => exercise.muscles;
  List<Instruction> get instructions =>
      equipment?.instructions ?? exercise.instructions;

  double get load => execution.totalLoad;
}
