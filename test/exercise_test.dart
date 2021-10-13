import 'package:test/test.dart';

import 'package:stronk/models/exercise/exercise.dart';

// class MockExerciseController extends Mock implements BaseExerciseController {}

void main() {
  group('Exercise', () {
    test("can_be_deserialized_and_serialized", () {
      final exercise = BaseExercise.empty();

      expect(exercise, BaseExercise.fromJson(exercise.toJson()));
    });

    test("can_create_new_exercise", () {
      final mockStateNotifier = null;
    });
  });
}
