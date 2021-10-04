import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:stronk/routing/app_router.dart';
import 'package:stronk/controllers/auth_controller.dart';

import 'package:stronk/app/common_widgets/user_overview_widget.dart';
import 'package:stronk/app/home/workout_overview_widget.dart';
import 'package:stronk/app/home/challenge_overview_widget.dart';

import 'package:stronk/app/drawer/default_drawer.dart';

class HomeScreen extends HookConsumerWidget {
  /// The home screen for stronk shows two graphs
  /// - An overview of workouts/week
  /// - An overview of the completeness of challenges
  ///
  /// It provides access to the standard drawer, that lets the user
  /// access all parts of the app directly, as well as logging them out.
  ///
  /// The action button allows for easy tracking of workouts and
  /// challenges being completed.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dialState = useState(false);

    return WillPopScope(
      onWillPop: () async => dialState.value = false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Stronk"),
        ),
        drawer: DefaultDrawer(),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: InkWell(
                child: UserOverviewWidget(),
                onTap: () => Navigator.of(context).pushNamed(AppRoutes.profile),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: WorkoutOverviewWidget(),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: ChallengeOverviewWidget(),
              ),
            ),
          ],
        ),
        floatingActionButton: SpeedDial(
          icon: Icons.add,
          activeIcon: Icons.close,
          spacing: 3,
          closeManually: false,
          openCloseDial: dialState,
          childPadding: EdgeInsets.all(5),
          spaceBetweenChildren: 4,
          direction: SpeedDialDirection.Up,
          children: [
            SpeedDialChild(
              child: ImageIcon(AssetImage('assets/icons/dumbbell.png')),
              label: "Track Workout",
              onTap: () => Navigator.of(context).pushNamed(AppRoutes.workouts),
            ),
            SpeedDialChild(
              child: ImageIcon(AssetImage('assets/icons/medal.png')),
              label: "Log a Challenge",
              onTap: () => Navigator.of(context).pushNamed(AppRoutes.challenges),
            ),
          ],
        ),
      ),
    );
  }
}
