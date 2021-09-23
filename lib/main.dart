import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/app_theme.dart';

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
  Widget build(BuildContext context, ref) {
    final datagen = ref.read(dataGeneratorProvider);
    datagen.generateMusclesFromFile();

    return MaterialApp(
      title: 'Stronk',
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: AppRoutes.exerciseEdit,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => AppRouter.onGenerateRoute(settings),
    );
  }
}
