import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:stronk/app/drawer/default_drawer.dart';
import 'package:stronk/app/settings/reminder_settings_widget.dart';
import 'package:stronk/app/settings/user_settings_widget.dart';
import 'package:stronk/app/settings/workout_settings_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      drawer: DefaultDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "User Settings",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const UserSettingsWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "Workout Settings",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const WorkoutSettingsWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "Reminders",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const ReminderSettingsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
