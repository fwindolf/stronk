import 'package:flutter/material.dart';
import 'package:stronk/models/exercise/set.dart';

enum ExerciseType {
  SetRepetition,
  ThreeToSeven,
  DoPause,
  Hold,
  Flow,
}

extension ExerciseTypeDescription on ExerciseType {
  String get name {
    switch (this) {
      case ExerciseType.SetRepetition:
        return "Set Repetition";
      case ExerciseType.ThreeToSeven:
        return "3 to 7";
      case ExerciseType.DoPause:
        return "Do Pause";
      case ExerciseType.Hold:
        return "Hold";
      case ExerciseType.Flow:
        return "Flow";
      default:
        return "??";
    }
  }

  String get short {
    switch (this) {
      case ExerciseType.SetRepetition:
        return "REP";
      case ExerciseType.ThreeToSeven:
        return "3-7";
      case ExerciseType.DoPause:
        return "DOP";
      case ExerciseType.Hold:
        return "HO";
      case ExerciseType.Flow:
        return "FW";
      default:
        return "??";
    }
  }

  Color get color {
    switch (this) {
      case ExerciseType.SetRepetition:
        return Colors.red.shade800;
      case ExerciseType.ThreeToSeven:
        return Colors.orange.shade800;
      case ExerciseType.DoPause:
        return Colors.blue.shade800;
      case ExerciseType.Hold:
        return Colors.green.shade800;
      case ExerciseType.Flow:
        return Colors.purple.shade800;
      default:
        return Colors.grey.shade800;
    }
  }

  String get description {
    switch (this) {
      case ExerciseType.SetRepetition:
        return "Do the exercise for a given number of sets and repetitions within each set";
      case ExerciseType.ThreeToSeven:
        return "Repeat the exercise 3x, 4x, ..., 7x with short pause in between";
      case ExerciseType.DoPause:
        return "Do the exercise until exhaustion, pause and repeat until you finish all repetitions";
      case ExerciseType.Hold:
        return "Hold the exercise for a defined duration";
      case ExerciseType.Flow:
        return "Do the exercise's movement a given number of times";
      default:
        return "Undefined type";
    }
  }
}

extension ExerciseSetTypes on ExerciseSet {
  static List<ExerciseSet> forType({
    required ExerciseType type,
    double? weight,
  }) {
    switch (type) {
      case ExerciseType.SetRepetition:
        return List.generate(
            3,
            (index) => ExerciseSet(
                  count: 12,
                  pauseSeconds: 90,
                  weight: weight,
                ));
      case ExerciseType.ThreeToSeven:
        return List.generate(
            5,
            (index) => ExerciseSet(
                  count: index + 3,
                  pauseSeconds: 15,
                  weight: weight,
                ));
      case ExerciseType.DoPause:
        return [
          ExerciseSet(count: 15, pauseSeconds: 20, weight: weight),
          ExerciseSet(count: 8, pauseSeconds: 20, weight: weight),
          ExerciseSet(count: 4, pauseSeconds: 20, weight: weight),
          ExerciseSet(count: 3, pauseSeconds: 20, weight: weight),
        ];
      case ExerciseType.Hold:
        return [
          ExerciseSet(count: 60, pauseSeconds: 30, weight: weight),
        ];
      case ExerciseType.Flow:
        return [
          ExerciseSet(count: 1, pauseSeconds: 20, weight: weight),
        ];
      default:
        return [];
    }
  }
}
