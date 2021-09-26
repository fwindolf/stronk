import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/drawer/default_drawer.dart';
import 'package:stronk/controllers/auth_controller.dart';
import 'package:stronk/controllers/settings_controller.dart';
import 'package:stronk/models/settings/settings.dart';
import 'package:stronk/models/settings/user_settings.dart';
import 'package:stronk/models/settings/workout_settings.dart';
import 'package:stronk/repositories/settings_repository.dart';

class EnumDialog {
  static Future<T?> show<T>(BuildContext context, String title,
      Map<T, String> options, T current) async {
    return showDialog<T>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
          children: options.keys.map(
            (T option) {
              return SimpleDialogOption(
                onPressed: () => Navigator.pop(context, option),
                child: ListTile(
                  title: Text(options[option]!),
                  leading: Radio<T>(
                    value: option,
                    groupValue: current,
                    onChanged: (option) => Navigator.pop(context, option),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 0.0,
                  horizontal: 8.0,
                ),
              );
            },
          ).toList(),
        );
      },
    );
  }
}


void _updateSettings(WidgetRef ref, Settings settings) {
  final user = ref.read(authControllerProvider);
  if (user != null) {
    ref.read(settingsRepositoryProvider).update(
          userId: user.uid,
          settings: settings,
        );
    ref.read(settingsControllerProvider.notifier).retrieveItems();
  }
}


class UserSettingsWidget extends ConsumerWidget {
  const UserSettingsWidget();

  _buildContent(Settings settings, BuildContext context, WidgetRef ref) {
    final userSettings = settings.userSettings;
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4.0,
                vertical: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "Language",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: Text(userSettings.language.name),
                    flex: 2,
                  ),
                ],
              ),
            ),
            onTap: () async {
              final language = await EnumDialog.show<Language>(
                context,
                "Select Language",
                Language.values
                    .asMap()
                    .map((_, value) => MapEntry(value, value.name)),
                userSettings.language,
              );
              if (language != null) {
                _updateSettings(
                  ref,
                  settings.copyWith(
                    userSettings: userSettings.copyWith(
                      language: language,
                    ),
                  ),
                );
              }
            },
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4.0,
                vertical: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "Theme",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: Text(userSettings.theme.name),
                    flex: 2,
                  ),
                ],
              ),
            ),
            onTap: () async {
              final theme = await EnumDialog.show<ThemeMode>(
                context,
                "Select Theme",
                ThemeMode.values
                    .asMap()
                    .map((_, value) => MapEntry(value, value.name)),
                userSettings.theme,
              );
              if (theme != null) {
                _updateSettings(
                  ref,
                  settings.copyWith(
                    userSettings: userSettings.copyWith(
                      theme: theme,
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  _buildLoading() {
    return Center(child: CircularProgressIndicator());
  }

  _buildError(error) {
    return Center(child: Text(error.toString()));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(settingsControllerProvider).when(
        data: (settings) => _buildContent(settings, context, ref),
        loading: () => _buildLoading(),
        error: (error, _) => _buildError(error));
  }
}

class WorkoutSettingsWidget extends ConsumerWidget {
  const WorkoutSettingsWidget();

  _buildContent(Settings settings, BuildContext context, WidgetRef ref) {
    final workoutSettings = settings.workoutSettings;
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4.0,
                vertical: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "Units",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: Text(workoutSettings.unit.name),
                    flex: 2,
                  ),
                ],
              ),
            ),
            onTap: () async {
              final unit = await EnumDialog.show<Unit>(
                context,
                "Select Units",
                Unit.values
                    .asMap()
                    .map((_, value) => MapEntry(value, value.name)),
                workoutSettings.unit,
              );
              if (unit != null) {
                _updateSettings(
                  ref,
                  settings.copyWith(
                    workoutSettings: workoutSettings.copyWith(
                      unit: unit,
                    ),
                  ),
                );
              }
            },
          ),
        
        
        ],),);
  }

  _buildLoading() {
    return Center(child: CircularProgressIndicator());
  }

  _buildError(error) {
    return Center(child: Text(error.toString()));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(settingsControllerProvider).when(
        data: (settings) => _buildContent(settings, context, ref),
        loading: () => _buildLoading(),
        error: (error, _) => _buildError(error));
  }
}

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
          ],
        ),
      ),
    );
  }
}
