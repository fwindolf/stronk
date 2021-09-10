import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/controllers/auth_controller.dart';

class StatsOverviewWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final workouts = ref.read(workoutControllerProvider);

    return Container(
      height: 100,
      width: double.infinity,
      child: Card(
        elevation: 5,
        child: Column(
          children: <Widget>[
            Text(
              "X workouts",
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.headline6?.fontSize,
              ),
            ),
            Text(
              "X challenges with x longest streak",
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.headline6?.fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
