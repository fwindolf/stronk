import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/charts/challenge_chart.dart';

class ChallengeOverviewWidget extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 220,
      width: double.infinity,
      child: Card(elevation: 3, child: ChallengeChart()),
    );
  }
}
