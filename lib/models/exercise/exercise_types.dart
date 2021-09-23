import 'package:flutter/material.dart';

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
        return "Repeat a set for one exercise";
      case ExerciseType.ThreeToSeven:
        return "Repeat the exercise 3x, 4x, ..., 7x";
      case ExerciseType.DoPause:
        return "Do the exercise until exhaustion, then pause and repeat";
      case ExerciseType.Hold:
        return "Hold the exercise for a defined duration";
      case ExerciseType.Flow:
        return "Do the exercise once";
      default:
        return "Undefined type";
    }
  }
}
