enum ExerciseType {
  SetRepetition,
  ThreeToSeven,
  DoPause,
  Hold,
  Flow,
}

extension ExerciseTypeDescription on ExerciseType {
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
