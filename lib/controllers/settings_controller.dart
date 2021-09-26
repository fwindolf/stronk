import 'package:riverpod/riverpod.dart';
import 'package:stronk/controllers/auth_controller.dart';

import 'package:stronk/models/settings/settings.dart';

import 'package:stronk/repositories/exception.dart';
import 'package:stronk/repositories/settings_repository.dart';

final settingsExceptionProvider = StateProvider<DataTransferException?>((_) => null);

final settingsProvider = Provider<Settings>((ref) {
  final settingsState = ref.watch(settingsControllerProvider);

  return settingsState.maybeWhen(
    data: (settings) => settings,
    orElse: () => Settings.empty(),
  );
});

final settingsControllerProvider =
    StateNotifierProvider<SettingsController, AsyncValue<Settings>>((ref) {
  
  final user = ref.watch(authControllerProvider);

  if (user == null) throw UnimplementedError("Need user to read settings");
  return SettingsController(ref.read, user.uid);
});

class SettingsController extends StateNotifier<AsyncValue<Settings>> {
  final Reader _read;
  final String? _userId;

  SettingsController(this._read, this._userId) : super(AsyncValue.loading()) {
    retrieveItems();
  }

  Future<void> retrieveItems({bool isRefreshing = false}) async {
    if (isRefreshing) {
      state = AsyncValue.loading();
    }

    try {
      final settings = await _read(settingsRepositoryProvider).retrieve(userId: _userId);
      if (mounted) {
        state = AsyncValue.data(settings);
      }
    } on DataTransferException catch (e, st) {
      state = AsyncValue.error(e, st);
    } catch (e) {
      print(e.toString());
    }
  }
}
