import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stronk/app/home/home_screen.dart';

class AppRoutes {
  static const home = "/";
  static const profile = '/profile';
  static const settings = '/settings';
  static const reminders = '/reminders';
  static const exercises = '/exercises';
  static const exerciseDetail = '/exercise-detail';
  static const exerciseEdit = '/exercise-edit';
  static const exerciseProgression = '/exercise-progression';
  static const workouts = '/workouts';
  static const workoutDetail = '/workout-detail';
  static const workoutEdit = '/workout-edit';
  static const workoutHistory = '/workout-history';
  static const challenges = '/challenges';
  static const trackSelection = '/track-selection';
  static const trackWorkout = '/track-workout';
  static const trackChallenge = '/track-challenge';
}

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomeScreen(),
          settings: settings,
          fullscreenDialog: true,
        );
      case AppRoutes.exerciseDetail:
      // final productId = args as String;
      // return MaterialPageRoute<dynamic>(
      //   builder: (_) => ProviderScope(
      //     overrides: [detailProductIdProvider.overrideWithValue(productId)],
      //     child: ProductDetailScreen(),
      //   ),
      //   settings: settings,
      //   fullscreenDialog: true,
      // );
      default:
        // TODO: Throw
        return null;
    }
  }
}
