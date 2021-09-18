import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:stronk/models/exercise/exercise_collection.dart';

import 'package:stronk/models/workout/workout_tag.dart';

part 'workout.freezed.dart';
part 'workout.g.dart';

@freezed
class Workout with _$Workout {
  const Workout._();

  const factory Workout({
    String? id,
    required String name,
    required String description,
    required String? creator,
    @Default(<WorkoutTag>[]) List<WorkoutTag> tags,
    // Warmup? warmup,
    // Exercises? exercises,
    // Cooldown? cooldown,
    @Default(false) bool isFavourite,
  }) = _Workout;

  factory Workout.empty() => const Workout(name: '', description: '', creator: null);

  factory Workout.fromJson(Map<String, dynamic> json) => _$WorkoutFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
