import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:riverpod/riverpod.dart';
import 'package:stronk/models/exercise/equipment.dart';
import 'package:stronk/models/exercise/execution.dart';
import 'package:stronk/models/exercise/exercise.dart';
import 'package:stronk/models/muscle/muscle.dart';
import 'package:stronk/repositories/exception.dart';
import 'package:stronk/repositories/exercise_repository.dart';
import 'package:stronk/repositories/muscle_repository.dart';

const MUSCLES_FILE = "assets/data/muscles.json";
const EXERCISES_FILE = "assets/data/exercises.json";

final dataGeneratorProvider = Provider<DataGenerator>((ref) {
  final muscleRepo = ref.read(muscleRepositoryProvider);
  final exerciseRepo = ref.read(exerciseRepositoryProvider);

  return DataGenerator(muscleRepo, exerciseRepo);
});

class DataGenerator {
  final MuscleRepository _musclesRepository;
  final ExerciseRepository _exerciseRepository;

  bool musclesGenerated = false;
  bool exercisesGenerated = false;

  DataGenerator(this._musclesRepository, this._exerciseRepository);

  void generateMusclesFromFile() async {
    if (musclesGenerated) return;

    final file_contents = await rootBundle.loadString(MUSCLES_FILE);
    final data = jsonDecode(file_contents) as List<dynamic>;

    musclesGenerated = true;

    final muscles = await _musclesRepository.retrieve();
    data.forEach((element) {
      try {
        final _muscle = Muscle.fromJson(element);
        final muscle = _muscle.copyWith(
          id: _muscle.short.replaceAll(' ', '').toLowerCase(),
        );

        final existingMuscle = muscles.where((el) => el.id == muscle.id);
        if (existingMuscle.isEmpty) {
          _musclesRepository.create(muscle: muscle);
        } else {
          _musclesRepository.update(muscle: muscle);
        }
      } on DataTransferException catch (e) {
        print("Could not create Muscle: $e");
      } on Exception catch (e) {
        print("Could not deserialize Muscle: $e");
      }
    });
  }

  void generateExercisesFromFile() async {
    if (exercisesGenerated) return;

    final file_contents = await rootBundle.loadString(EXERCISES_FILE);
    final data = jsonDecode(file_contents) as List<dynamic>;

    exercisesGenerated = true;

    final exercises = await _exerciseRepository.retrieve(userId: "preset");
    final muscles = await _musclesRepository.retrieve();

    data.forEach((element) {
      try {
        // Get the muscles from the provided short name
        element["muscles"] = List.from(element["muscles"])
            .where((el) => muscles.map((m) => m.short).contains(el))
            .map((el) => muscles.firstWhere((muscle) => el == muscle.short).toJson())
            .toList();

        Map.from(element["equipment"]).forEach((equipment, instructions) {
          final exercise = ExecutableExercise(
            exercise: BaseExercise.fromJson(element) as Exercise,
            creator: "preset",
            execution: Execution.create(element["type"], element),
            equipment: Equipment.create(equipment, instructions),
          );

          final existingExercise = exercises.where((el) => el.id == exercise.id);
          if (existingExercise.isEmpty) {
            _exerciseRepository.create(userId: "preset", exercise: exercise as Exercise);
          }
        });
      } on DataTransferException catch (e) {
        print("Could not create Exercise: $e");
      } on Exception catch (e) {
        print("Could not deserialize Exercise: $e");
      }
    });
  }
}
