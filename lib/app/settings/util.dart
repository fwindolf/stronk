import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/models/settings/settings.dart';
import 'package:stronk/controllers/auth_controller.dart';
import 'package:stronk/controllers/settings_controller.dart';
import 'package:stronk/repositories/settings_repository.dart';

void updateSettings(WidgetRef ref, Settings settings) {
  ref.read(authControllerProvider).maybeWhen(
        data: (user) {
          ref.read(settingsRepositoryProvider).update(
                userId: user.uid,
                settings: settings,
              );
          ref.read(settingsControllerProvider(user).notifier).retrieveItems();
        },
        orElse: () {},
      );
}
