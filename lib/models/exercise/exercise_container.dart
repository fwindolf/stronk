import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:stronk/models/exercise/exercise.dart';

part 'exercise_container.freezed.dart';
part 'exercise_container.g.dart';

@freezed
class ExerciseContainer with _$ExerciseContainer {
  const ExerciseContainer._();

  const factory ExerciseContainer({
    String? id,
    required List<Exercise> exercises,
  }) = _ExerciseContainer;

  factory ExerciseContainer.empty() => const ExerciseContainer(exercises: <Exercise>[]);

  factory ExerciseContainer.fromJson(Map<String, dynamic> json) =>
      _$ExerciseContainerFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');

  void add() => throw UnimplementedError();
  void remove() => throw UnimplementedError();
}
