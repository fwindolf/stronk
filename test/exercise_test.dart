import 'package:test/test.dart';

import 'package:stronk/models/exercise/exercise.dart';

// class MockExerciseController extends Mock implements BaseExerciseController {}

void main() {
  group('Exercise', () {
    test("can_be_deserialized_and_serialized", () {
      final exercise = Exercise.empty(id: "test");

      expect(exercise, Exercise.fromJson(exercise.toJson()));
    });

    test("can_create_new_exercise", () {
      final mockStateNotifier = null;
    });
  });
}
