import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/app_theme.dart';
import 'package:stronk/controllers/auth_controller.dart';

import 'package:stronk/controllers/settings_controller.dart';
import 'package:stronk/models/settings/settings.dart';

import 'package:stronk/util/data.dart';

import 'package:stronk/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: Stronk()));
}

class Stronk extends ConsumerWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final datagen = ref.read(dataGeneratorProvider);
    // datagen.generateMusclesFromFile();
    // datagen.generateExercisesFromFile();

    // Get/generate settings
    final user = ref.watch(authControllerProvider).maybeWhen(
          data: (user) => user,
          orElse: () => null,
        );

    final settings = user == null ? Settings.empty() : ref.watch(settingsProvider(user));
    final route = user == null ? AppRoutes.startup : AppRoutes.home;

    return MaterialApp(
      title: 'Stronk',
      themeMode: settings.userSettings.theme,
      theme: AppColorScheme.lightTheme,
      darkTheme: AppColorScheme.darkTheme,
      initialRoute: route,
      onGenerateRoute: (settings) => AppRouter.onGenerateRoute(settings),
    );
  }
}
