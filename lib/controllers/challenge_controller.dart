import 'package:riverpod/riverpod.dart';
import 'package:stronk/controllers/auth_controller.dart';
import 'package:stronk/models/challenge/challenge.dart';

import 'package:stronk/repositories/exception.dart';
import 'package:stronk/repositories/challenge_repository.dart';

final challengeListExceptionProvider = StateProvider<DataTransferException?>((_) => null);

final challengeListProvider = Provider<List<Challenge>>((ref) {
  final challengeListState = ref.watch(challengeListControllerProvider);

  return challengeListState.maybeWhen(
    data: (challenges) => challenges,
    orElse: () => <Challenge>[],
  );
});

final challengeListControllerProvider =
    StateNotifierProvider<ChallengeListController, AsyncValue<List<Challenge>>>((ref) {
  final user = ref.watch(authControllerProvider);
  return ChallengeListController(ref.read, user?.uid);
});

class ChallengeListController extends StateNotifier<AsyncValue<List<Challenge>>> {
  final Reader _read;
  final String? _userId;

  ChallengeListController(this._read, this._userId) : super(AsyncValue.loading()) {
    if (_userId != null) {
      retrieveItems();
    }
  }

  Future<void> retrieveItems({bool isRefreshing = false}) async {
    if (isRefreshing) {
      state = AsyncValue.loading();
    }

    try {
      final challenges = await _read(challengeRepositoryProvider).retrieve(userId: _userId!);
      if (mounted) {
        state = AsyncValue.data(challenges);
      }
    } on DataTransferException catch (e, st) {
      state = AsyncValue.error(e, st);
    } catch (e) {
      print(e.toString());
    }
  }
}
