import 'package:flutter/material.dart';
import 'package:stronk/routing/app_router.dart';

class DefaultDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: const Text("Hello Friend"),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            leading: const Icon(Icons.home_filled),
            title: const Text("Home"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.home);
            },
          ),
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
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.settings);
            },
          ),
        ],
      ),
    );
  }
}
