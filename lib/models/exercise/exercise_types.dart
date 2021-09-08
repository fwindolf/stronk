abstract class ExerciseType {}

/// n sets of m
class SetRepetitionExerciseType implements ExerciseType {}

/// 3-4-5-6-7 in rapid successions
class ThreeToSevenExerciseType implements ExerciseType {}

/// 20s pause between max possible reps
class DoPauseExerciseType implements ExerciseType {}

/// hold a position for n seconds
class HoldExerciseType implements ExerciseType {}

/// do a set of motions n times
class FlowExerciseType implements ExerciseType {}
