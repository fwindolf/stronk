import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/controllers/auth_controller.dart';
import 'package:stronk/routing/app_router.dart';

class StartupScreen extends HookConsumerWidget {
  const StartupScreen();

  Widget build(BuildContext context, WidgetRef ref) {
    // Route to the home page when the user is logged in
    ref.watch(authControllerProvider).whenData((user) {
      print("User $user was logged in");
      Future.delayed(
        Duration(seconds: 1),
        () => Navigator.of(context).pushReplacementNamed(AppRoutes.home),
      );
    });

    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(seconds: 2),
    )..repeat(reverse: true);
    final animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeOut,
    );

    return FadeTransition(
      opacity: animation,
      child: Center(
        child: ImageIcon(
          AssetImage('assets/icons/dumbbell.png'),
          color: Theme.of(context).colorScheme.primary,
          size: 200,
        ),
      ),
    );
  }
}
