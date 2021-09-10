import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChallengeOverviewWidget extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Card(
        elevation: 3,
        child: const Center(
          child: Text("Challenges"),
        ),
      ),
    );
  }
}
