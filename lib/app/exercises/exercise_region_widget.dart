import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/exercises/exercise_item_widget.dart';
import 'package:stronk/models/exercise/exercise.dart';
import 'package:stronk/models/muscle/muscle.dart';

final muscleRegionProvider = Provider<MuscleRegion>((_) => throw UnimplementedError());
final muscleRegionExercisesProvider = Provider<List<Exercise>>((_) => throw UnimplementedError());

class ExerciseRegionItem extends ConsumerWidget {
  const ExerciseRegionItem();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muscleRegion = ref.read(muscleRegionProvider);
    final muscleRegionExercises = ref.read(muscleRegionExercisesProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(muscleRegion.description),
        ),
        Divider(),
        ...muscleRegionExercises.map(
          (exercise) => ProviderScope(
            overrides: [
              exerciseProvider.overrideWithValue(exercise),
            ],
            child: const ExerciseItem(),
          ),
        ),
      ],
    );
  }
}
