import 'package:riverpod/riverpod.dart';
import 'package:stronk/models/muscle/muscle.dart';

import 'package:stronk/repositories/exception.dart';
import 'package:stronk/repositories/muscle_repository.dart';

final muscleListExceptionProvider = StateProvider<DataTransferException?>((_) => null);

final muscleListProvider = Provider<List<Muscle>>((ref) {
  final muscleListState = ref.watch(muscleListControllerProvider);

  return muscleListState.maybeWhen(
    data: (muscles) => muscles,
    orElse: () => <Muscle>[],
  );
});

final muscleListControllerProvider =
    StateNotifierProvider<MuscleListController, AsyncValue<List<Muscle>>>((ref) {
  return MuscleListController(ref.read);
});

class MuscleListController extends StateNotifier<AsyncValue<List<Muscle>>> {
  final Reader _read;

  MuscleListController(this._read) : super(AsyncValue.loading()) {
    retrieveItems();
  }

  Future<void> retrieveItems({bool isRefreshing = false}) async {
    if (isRefreshing) {
      state = AsyncValue.loading();
    }

    try {
      final muscles = await _read(muscleRepositoryProvider).retrieve();
      if (mounted) {
        state = AsyncValue.data(muscles);
      }
    } on DataTransferException catch (e, st) {
      state = AsyncValue.error(e, st);
    } catch (e) {
      print(e.toString());
    }
  }
}
