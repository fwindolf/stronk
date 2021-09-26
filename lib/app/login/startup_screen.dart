import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StartupScreen extends HookWidget {
  const StartupScreen();

  @override
  Widget build(BuildContext context) {
    // final tween = Tween<double>(begin: 1.0, end: 0.0);
    // final animationController = useAnimationController(
    //   duration: const Duration(milliseconds: 500),
    // )..repeat(reverse: true);
    final controller = useAnimationController(duration: const Duration(seconds: 1),);

    return Center(
      child: FadeTransition(
        opacity: CurvedAnimation(parent: controller, curve: Curves.easeIn),
        child: const ImageIcon(
          AssetImage('assets/icons/dumbbell.png'),
          color: Colors.green,
          size: 200,
        ),
      ),
    );
  }
}
