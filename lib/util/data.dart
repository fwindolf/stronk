import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:riverpod/riverpod.dart';
import 'package:stronk/models/muscle/muscle.dart';
import 'package:stronk/repositories/exception.dart';
import 'package:stronk/repositories/muscle_repository.dart';

const MUSCLES_FILE = "assets/data/muscles.json";

final dataGeneratorProvider = Provider<DataGenerator>((ref) {
  final muscleRepo = ref.read(muscleRepositoryProvider);

  return DataGenerator(muscleRepo);
});

class DataGenerator {
  final MuscleRepository _repo;
  bool musclesGenerated = false;

  DataGenerator(this._repo);

  void generateMusclesFromFile() async {
    if (musclesGenerated) return;

    final file_contents = await rootBundle.loadString(MUSCLES_FILE);
    final data = jsonDecode(file_contents) as List<dynamic>;

    final muscles = await _repo.retrieve();
    data.forEach((element) {
      try {
        final muscle = Muscle.fromJson(element);
        final existingMuscle = muscles.where((el) => el.name == muscle.name);
        if (existingMuscle.isEmpty) {
          _repo.create(muscle: muscle);
        } else {
          _repo.update(muscle: muscle.copyWith(id: existingMuscle.first.id));
        }
      } on DataTransferException catch (e) {
        print("Could not create Muscle: $e");
      } on Exception catch (e) {
        print("Could not deserialize Muscle: $e");
      }
    });
    musclesGenerated = true;
  }
}
