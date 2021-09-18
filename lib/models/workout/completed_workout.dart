import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stronk/models/exercise/completed_exercise.dart';
import 'package:stronk/models/workout/workout.dart';

part 'completed_workout.freezed.dart';
part 'completed_workout.g.dart';

@freezed
class CompletedWorkout with _$CompletedWorkout {
  const CompletedWorkout._();

  const factory CompletedWorkout({
    String? id,
    required String creator,
    required Workout workout,
    required DateTime startTime,
    required DateTime? finishTime,
    required List<CompletedExercise> exercises,
  }) = _CompletedWorkout;

  factory CompletedWorkout.fromWorkout(String userId, Workout workout) => CompletedWorkout(
        creator: userId,
        workout: workout,
        startTime: DateTime.now(),
        finishTime: null,
        exercises: <CompletedExercise>[],
      );

  factory CompletedWorkout.fromJson(Map<String, dynamic> json) => _$CompletedWorkoutFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
