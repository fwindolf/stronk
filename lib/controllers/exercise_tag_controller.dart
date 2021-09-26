import 'package:riverpod/riverpod.dart';
import 'package:stronk/controllers/auth_controller.dart';

import 'package:stronk/models/exercise/exercise_tag.dart';
import 'package:stronk/repositories/exception.dart';
import 'package:stronk/repositories/exercise_tag_repository.dart';

final exerciseTagListExceptionProvider =
    StateProvider<DataTransferException?>((_) => null);

final exericseTagListProvider = Provider<List<ExerciseTag>>((ref) {
  final exerciseTagListState = ref.watch(exerciseTagListControllerProvider);

  return exerciseTagListState.maybeWhen(
    data: (exerciseTags) => exerciseTags,
    orElse: () => <ExerciseTag>[],
  );
});

final exerciseTagListControllerProvider = StateNotifierProvider<
    ExerciseTagListController, AsyncValue<List<ExerciseTag>>>((ref) {
  return ref.watch(authControllerProvider).maybeWhen(
        data: (user) => ExerciseTagListController(ref.read, user.uid),
        orElse: () => ExerciseTagListController(ref.read, null),
      );
});

class ExerciseTagListController
    extends StateNotifier<AsyncValue<List<ExerciseTag>>> {
  final Reader _read;
  final String? _userId;

  ExerciseTagListController(this._read, this._userId)
      : super(AsyncValue.loading()) {
    if (_userId != null) {
      retrieveItems();
    }
  }

  Future<void> retrieveItems({bool isRefreshing = false}) async {
    if (isRefreshing) {
      state = AsyncValue.loading();
    }

    try {
      final exerciseTags =
          await _read(exerciseTagRepositoryProvider).retrieve(userId: _userId!);
      if (mounted) {
        state = AsyncValue.data(exerciseTags);
      }
    } on DataTransferException catch (e, st) {
      state = AsyncValue.error(e, st);
    } catch (e) {
      print(e.toString());
    }
  }
}
