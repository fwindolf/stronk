import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import 'package:stronk/models/exercise/exercise_tag.dart';
import 'package:stronk/models/exercise/instruction.dart';
import 'package:stronk/models/muscle/muscle.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

enum ExerciseType {
  SetRepetition,
  ThreeToSeve,
  DoPause,
  Hold,
  Flow,
}

@freezed
class Exercise with _$Exercise {
  const Exercise._();

  const factory Exercise({
    String? id,
    required String name,
    required String description,
    required String? creator,
    required ExerciseType type,
    required List<ExerciseTag> tags,
    required List<Muscle> muscles,
    required List<Instruction> instructions,
    @Default(false) bool isFavourite,
  }) = _Exercise;

  factory Exercise.empty() => const Exercise(
        name: '',
        description: '',
        creator: null,
        type: ExerciseType.SetRepetition,
        tags: <ExerciseTag>[],
        muscles: <Muscle>[],
        instructions: <Instruction>[],
      );

  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);

  factory Exercise.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return Exercise.fromJson(data).copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');

  bool belongsTo(User? user) {
    if (creator == null || user == null) return false;
    return creator == user.uid;
  }
}
