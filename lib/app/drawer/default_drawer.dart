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
            title: const Text("Shop"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.home);
            },
          ),
          ListTile(
            leading: const ImageIcon(AssetImage('assets/icons/dumbbell.png')),
            title: const Text("Orders"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.workouts);
            },
          ),
        ],
      ),
    );
  }
}
