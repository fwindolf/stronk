import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/charts/workout_count_chart.dart';

class WorkoutOverviewWidget extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      child: Card(
        elevation: 3,
        child: const WorkoutCountChart(),
      ),
    );
  }
}
