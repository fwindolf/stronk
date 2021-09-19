import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/models/workout/completed_workout.dart';

class WorkoutCountBar extends StatelessWidget {
  final int targetCount;
  final int completedCount;

  const WorkoutCountBar(this.targetCount, this.completedCount);

  @override
  Widget build(BuildContext context) {
    final barElements = List.generate(targetCount, (index) => index).map((index) {
      var radius = null;
      if (index == 0) {
        radius = BorderRadius.only(
          topLeft: Radius.circular(5.0),
          topRight: Radius.circular(5.0),
        );
      } else if (index == targetCount - 1) {
        radius = BorderRadius.only(
          bottomLeft: Radius.circular(5.0),
          bottomRight: Radius.circular(5.0),
        );
      }

      var color = Colors.grey.withOpacity(0.2);
      if (completedCount > index) {
        color = Theme.of(context).colorScheme.primary;
      }

      return Container(
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
          color: color,
          borderRadius: radius,
        ),
      );
    }).toList();

    return Container(
      width: 25,
      child: Column(
        children: barElements,
      ),
    );
  }
}

class WorkoutCountChart extends ConsumerWidget {
  final int weeksShown;

  const WorkoutCountChart({this.weeksShown = 8});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final workouts = <CompletedWorkout>[];
    final workoutTarget = 4;

    // Find week of year
    // TODO: Correct for jumps in year
    final today = DateTime.now();
    final startOfYear = DateTime(today.year, 1, 1, 0, 0);
    final firstMonday = startOfYear.weekday;
    final daysInFirstWeek = 8 - firstMonday;
    final firstWeek = (daysInFirstWeek > 3) ? 1 : 0;

    // Count per week
    final earliest = today.subtract(Duration(days: today.weekday + 7 * (weeksShown - 1)));
    final earliestWeek =
        firstWeek + ((earliest.difference(startOfYear).inDays - daysInFirstWeek) / 7).ceil();

    // Visible weeks
    final weeks = Iterable<int>.generate(weeksShown).map((weekNumber) {
      return earliestWeek + weekNumber;
    });

    // Split per week
    var workoutsPerWeek = <int, List<CompletedWorkout>>{};
    workouts.forEach((workout) {
      if (workout.startTime.isBefore(earliest)) return;

      final diff = workout.startTime.difference(startOfYear);
      final week = firstWeek + ((diff.inDays - daysInFirstWeek) / 7).ceil();

      workoutsPerWeek[week] = List.from(workoutsPerWeek[week] ?? [])..add(workout);
    });

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: weeks.map((week) {
          return Column(
            children: [
              // WorkoutCountBar(workoutTarget, workoutsPerWeek[week]?.length ?? 0),
              Expanded(
                  child: WorkoutCountBar(workoutTarget, Random.secure().nextInt(workoutTarget))),
              SizedBox(height: 10),
              Text(week.toString()),
            ],
          );
        }).toList(),
      ),
    );
  }
}
