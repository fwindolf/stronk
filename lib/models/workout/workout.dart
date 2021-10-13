import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stronk/models/exercise/exercise.dart';

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
    @Default([]) List<Exercise> warmup,
    required List<Exercise> exercises,
    @Default([]) List<Exercise> cooldown,
    @Default(false) bool isFavourite,
  }) = _Workout;

  factory Workout.empty() => const Workout(name: '', description: '', creator: null, exercises: []);

  factory Workout.fromJson(Map<String, dynamic> json) => _$WorkoutFromJson(json);

  factory Workout.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return Workout.fromJson(data).copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
