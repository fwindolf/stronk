import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/settings/reminder_screen.dart';
import 'package:stronk/app/settings/util.dart';
import 'package:stronk/controllers/auth_controller.dart';
import 'package:stronk/controllers/settings_controller.dart';
import 'package:stronk/models/settings/reminder.dart';
import 'package:stronk/models/settings/settings.dart';
import 'package:stronk/models/settings/workout_settings.dart';

class WorkoutReminderSettingsItem extends SettingsRowItem<Reminder> {
  static Widget _toWidget(Reminder reminder, SessionGoal? workoutGoal) {
    return Container(child: Text("${reminder.toString()} ${workoutGoal.toString()}"));
  }

  static void _showDialog(
    BuildContext context,
    WorkoutSettings workoutSettings,
    Function(WorkoutSettings) updateWorkoutSettings,
  ) async {
    if (workoutSettings.workoutGoal == null) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text("Set session goal first!"),
        ),
      );
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ReminderScreen(
            title: "Workout Reminder",
            workoutSettings: workoutSettings,
            updateWorkoutSettings: updateWorkoutSettings,
          ),
        ),
      );
    }
  }

  WorkoutReminderSettingsItem({
    required WorkoutSettings workoutSettings,
    required Function(WorkoutSettings) updateWorkoutSettings,
  }) : super(
          title: "Workouts Reminder ",
          data: workoutSettings.reminders["workout"] ?? Reminder.empty(),
          getValue: (reminder) => _toWidget(reminder, workoutSettings.workoutGoal),
          changeValue: (context) => _showDialog(
            context,
            workoutSettings,
            updateWorkoutSettings,
          ),
        );
}

class ReminderSettingsWidget extends ConsumerWidget {
  const ReminderSettingsWidget();

  _buildError(error) {
    return Container(child: Center(child: Text(error.toString())));
  }

  _buildLoading() {
    return Center(child: CircularProgressIndicator());
  }

  _buildContent(Settings settings, BuildContext context, WidgetRef ref) {
    final workoutSettings = settings.workoutSettings;
    return Column(
      children: [
        ReminderSlotsSettingsItem(
          slotChoices: workoutSettings.slotChoices,
          updateSlots: (_old, _new) => updateSlots(
            _old,
            _new,
            workoutSettings,
            (_workoutSettings) => updateSettings(
              ref,
              settings.copyWith(
                workoutSettings: _workoutSettings,
              ),
            ),
          ),
        ),
        WorkoutReminderSettingsItem(
          workoutSettings: workoutSettings,
          updateWorkoutSettings: (workoutSettings) => updateSettings(
            ref,
            settings.copyWith(
              workoutSettings: workoutSettings,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.read(authControllerProvider).maybeWhen(
        data: (user) => ref.watch(settingsControllerProvider(user)).when(
              data: (settings) => _buildContent(settings, context, ref),
              loading: () => _buildLoading(),
              error: (error, _) => _buildError(error),
            ),
        orElse: () => _buildError("Not logged in!"));
  }
}
