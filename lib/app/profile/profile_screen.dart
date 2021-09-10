import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:stronk/routing/app_router.dart';

import 'package:stronk/app/common_widgets/user_overview_widget.dart';
import 'package:stronk/app/common_widgets/stats_overview_widget.dart';

import 'package:stronk/app/drawer/default_drawer.dart';

class ProfileScreen extends HookConsumerWidget {
  /// The profile screen for stronk shows a access to the user defined
  /// workouts, challenges, exercises and more.
  ///
  /// The profile tag lets anonymous users specify a name, and also lets
  /// them login and/or link to social accounts.
  ///
  /// It provides access to the standard drawer, that lets the user
  /// access all parts of the app directly, as well as logging them out.
  ///
  /// There is also a link to the settings screen.
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
            UserOverviewWidget(),
            Expanded(
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: const ImageIcon(AssetImage('assets/icons/dumbbell.png')),
                      title: const Text("Workouts"),
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed(AppRoutes.workouts);
                      },
                    ),
                    ListTile(
                      leading: const ImageIcon(AssetImage('assets/icons/medal.png')),
                      title: const Text("Challenges"),
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed(AppRoutes.challenges);
                      },
                    ),
                    ListTile(
                      leading: const ImageIcon(AssetImage('assets/icons/exercises.png')),
                      title: const Text("Exercises"),
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed(AppRoutes.exercises);
                      },
                    ),
                    Spacer(),
                    Divider(),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text("Settings"),
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed(AppRoutes.settings);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
