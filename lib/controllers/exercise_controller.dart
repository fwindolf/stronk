import 'package:riverpod/riverpod.dart';
import 'package:stronk/controllers/auth_controller.dart';

import 'package:stronk/models/exercise/exercise.dart';
import 'package:stronk/repositories/exercise_repository.dart';
import 'package:stronk/repositories/exception.dart';

enum ExerciseFilter { all, onlyUser, onlyPreset }

final exerciseFilterProvider = StateProvider<ExerciseFilter>((_) => ExerciseFilter.all);

final exerciseListExceptionProvider = StateProvider<DataTransferException?>((_) => null);

final filteredExerciseListProvider = Provider<List<Exercise>>((ref) {
  final exerciseFilterState = ref.watch(exerciseFilterProvider).state;
  final exerciseListState = ref.watch(exerciseListControllerProvider);

  return exerciseListState.maybeWhen(
      data: (exercises) {
        switch (exerciseFilterState) {
          case ExerciseFilter.onlyPreset:
            return exercises.where((exercise) => exercise.creator == null).toList();
          case ExerciseFilter.onlyUser:
            return exercises.where((exercise) => exercise.creator != null).toList();
          default:
            return exercises;
        }
      },
      orElse: () => []);
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
      final exercises = await _read(exerciseRepositoryProvider).retrieveExercise(userId: _userId!);
      if (mounted) {
        state = AsyncValue.data(exercises);
      }
    } on DataTransferException catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
