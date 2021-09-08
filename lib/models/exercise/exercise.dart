import 'package:freezed_annotation/freezed_annotation.dart';
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
    required ExerciseType type,
    required List<ExerciseTag> tags,
    required List<Muscle> muscles,
    required List<Instruction> instructions,
    @Default(false) bool isFavourite,
  }) = _Exercise;

  factory Exercise.empty() => const Exercise(
        name: '',
        description: '',
        type: ExerciseType.SetRepetition,
        tags: <ExerciseTag>[],
        muscles: <Muscle>[],
        instructions: <Instruction>[],
      );

  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
