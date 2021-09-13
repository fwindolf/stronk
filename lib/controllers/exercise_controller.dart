import 'package:riverpod/riverpod.dart';
import 'package:stronk/controllers/auth_controller.dart';

import 'package:stronk/models/muscle/muscle.dart';
import 'package:stronk/models/exercise/exercise.dart';
import 'package:stronk/models/exercise/exercise_tag.dart';
import 'package:stronk/repositories/exercise_repository.dart';
import 'package:stronk/repositories/exception.dart';

enum ExerciseFilter { all, onlyUser, onlyPreset }

final exerciseSourceFilterProvider = StateProvider<ExerciseFilter>((_) => ExerciseFilter.all);

final exerciseMuscleFilterProvider = StateProvider<List<Muscle>?>((_) => null);
final exerciseMuscleRegionFilterProvider = StateProvider<MuscleRegion?>((_) => null);
final exerciseTagFilterProvider = StateProvider<List<ExerciseTag>?>((_) => null);

final exerciseListExceptionProvider = StateProvider<DataTransferException?>((_) => null);

final filteredExerciseListProvider = Provider<List<Exercise>>((ref) {
  final exerciseSourceFilterState = ref.watch(exerciseSourceFilterProvider).state;
  final exerciseMuscleFilterState = ref.watch(exerciseMuscleFilterProvider).state;
  final exerciseMuscleRegionFilterState = ref.watch(exerciseMuscleRegionFilterProvider).state;
  final exerciseTagFilterState = ref.watch(exerciseTagFilterProvider).state;

  final exerciseListState = ref.watch(exerciseListControllerProvider);

  return exerciseListState.maybeWhen(
      data: (exercises) {
        return exercises.where((exercise) {
          // Exercise creator is null for presets
          if (exerciseSourceFilterState == ExerciseFilter.onlyPreset && exercise.creator != null) {
            return false;
          } else if (exerciseSourceFilterState == ExerciseFilter.onlyUser &&
              exercise.creator == null) {
            return false;
          }

          if (exerciseMuscleFilterState != null) {
            // Update the match if the muscle is in the filter for muscles or region
            var matchesMuscle = false;
            exercise.muscles.forEach((muscle) {
              final _matchesMuscle = exerciseMuscleFilterState.contains(muscle);
              final _matchesRegion = exerciseMuscleRegionFilterState == muscle.region;
              matchesMuscle = matchesMuscle || _matchesRegion || _matchesMuscle;
            });
            if (!matchesMuscle) {
              return false;
            }
          }

          if (exerciseTagFilterState != null) {
            // Update the match if on of the tag is in the filter tags
            var matchesTags = false;
            exercise.tags.forEach((tag) {
              matchesTags = matchesTags || exerciseTagFilterState.contains(tag);
            });
            if (!matchesTags) {
              return false;
            }
          }

          return true;
        }).toList();
      },
      orElse: () => <Exercise>[]);
});

final exerciseListControllerProvider =
    StateNotifierProvider<ExerciseListController, AsyncValue<List<Exercise>>>((ref) {
  final user = ref.watch(authControllerProvider);
  return ExerciseListController(ref.read, user?.uid);
});

class ExerciseListController extends StateNotifier<AsyncValue<List<Exercise>>> {
  final Reader _read;
  final String? _userId;

  ExerciseListController(this._read, this._userId) : super(AsyncValue.loading()) {
    if (_userId != null) {
      retrieveItems();
    }
  }

  Future<void> retrieveItems({bool isRefreshing = false}) async {
    if (isRefreshing) {
      state = AsyncValue.loading();
    }

    try {
      final exercises = await _read(exerciseRepositoryProvider).retrieve(userId: _userId!);
      if (mounted) {
        state = AsyncValue.data(exercises);
      }
    } on DataTransferException catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
