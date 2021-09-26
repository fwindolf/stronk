import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/app_theme.dart';
import 'package:stronk/controllers/auth_controller.dart';

import 'package:stronk/controllers/settings_controller.dart';
import 'package:stronk/models/settings/settings.dart';

import 'package:stronk/util/data.dart';

import 'package:stronk/routing/app_router.dart';

import 'app/login/login_screen.dart';
import 'app/login/startup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: Stronk()));
}

class Stronk extends ConsumerWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final datagen = ref.read(dataGeneratorProvider);
    datagen.generateMusclesFromFile();

    return ref.watch(authControllerProvider).when(
          data: (user) {
            final settings = ref.watch(settingsProvider(user));

            return MaterialApp(
              title: 'Stronk',
              themeMode: settings.userSettings.theme,
              theme: lightTheme,
              darkTheme: darkTheme,
              initialRoute: AppRoutes.home,
              onGenerateRoute: (settings) =>
                  AppRouter.onGenerateRoute(settings),
            );
          },
          loading: () => StartupScreen(),
          error: (error, _) => LoginScreen(),
        );
  }
}
