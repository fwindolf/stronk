import 'dart:collection';
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
    final barElements =
        List.generate(targetCount, (index) => index).map((index) {
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

      return Flexible(
        flex: 1,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1.0,
            ),
            color: color,
            borderRadius: radius,
          ),
        ),
      );
    }).toList();

    return Column(
      children: barElements,
    );
  }
}

class WorkoutCountChart extends ConsumerWidget {
  final int weeksShown;

  const WorkoutCountChart({this.weeksShown = 8});

  Map<int, List<CompletedWorkout>> _splitWorkouts(
    List<CompletedWorkout> workouts,
    int weeksShown,
  ) {
    // Find start of shown period
    final today = DateTime.now();
    final earliest = today.subtract(Duration(
      days: today.weekday + 7 * (weeksShown - 1),
    ));

    final applicableWorkouts =
        workouts.where((workout) => workout.startTime.isAfter(earliest));

    // Weeks start with 0 until Thursday, with 1 on/after Thursday
    final startOfYear = DateTime(earliest.year, 1, 1);
    final firstWeekNumber = (8 - startOfYear.weekday > 3) ? 1 : 0;
    final earliestWeekNumber =
        firstWeekNumber + (earliest.difference(startOfYear).inDays / 7).ceil();

    var workoutsPerWeek = LinkedHashMap<int, List<CompletedWorkout>>();

    List.generate(weeksShown, (index) => index).forEach((index) {
      final startOfWeek = earliest.add(Duration(days: 7 * index));
      final endOfWeek = earliest.add(Duration(days: 7 * (index + 1)));

      var week = 0;
      if (endOfWeek.year == earliest.year) {
        // Week is within the same year as earliest
        week = earliestWeekNumber + index;
      } else {
        final startOfNextYear = DateTime(endOfWeek.year, 1, 1);
        final nextFirstWeekNumber = (8 - startOfNextYear.weekday > 3) ? 1 : 0;

        if (startOfWeek.year == earliest.year) {
          // Week is between years
          week = nextFirstWeekNumber == 1
              ? nextFirstWeekNumber
              : earliestWeekNumber + index; // 52 or 53 as there is no week 0
        } else {
          // Week is within the next year
          week = nextFirstWeekNumber +
              (startOfWeek.difference(startOfNextYear).inDays / 7).ceil();
        }
      }

      // Add workouts for this week
      workoutsPerWeek[week] = [];
      applicableWorkouts.forEach((workout) {
        if (workout.startTime.isBefore(startOfWeek)) return;
        if (workout.startTime.isAfter(endOfWeek.add(
          Duration(hours: 23, minutes: 59, seconds: 50),
        ))) return;

        workoutsPerWeek[week]!.add(workout);
      });
    });

    return workoutsPerWeek;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final workouts = <CompletedWorkout>[];
    final workoutsPerWeek = _splitWorkouts(workouts, weeksShown);
    final workoutTarget = 4;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Completed Workouts",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: workoutsPerWeek.keys.map((week) {
                return Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Column(
                      children: [
                        // WorkoutCountBar(workoutTarget, workoutsPerWeek[week]?.length ?? 0),
                        Expanded(
                          child: WorkoutCountBar(
                            workoutTarget,
                            Random.secure().nextInt(workoutTarget),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(week.toString()),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
