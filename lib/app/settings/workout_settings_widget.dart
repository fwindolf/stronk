import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/common_widgets/dial_widgets.dart';
import 'package:stronk/app/settings/enum_dialog.dart';
import 'package:stronk/app/settings/util.dart';
import 'package:stronk/controllers/auth_controller.dart';
import 'package:stronk/controllers/settings_controller.dart';
import 'package:stronk/models/settings/settings.dart';
import 'package:stronk/models/settings/workout_settings.dart';

class UnitsItem extends SettingsRowItem<Unit> {
  UnitsItem({
    required Unit unit,
    required Function(Unit) updateUnit,
  }) : super(
          title: "Units",
          data: unit,
          getValue: (unit) => unit.name,
          changeValue: (BuildContext context) async {
            final _unit = await EnumDialog.show<Unit>(
              context,
              "Select Units",
              Unit.values.asMap().map((_, value) => MapEntry(value, value.name)),
              unit,
            );
            if (_unit != null) {
              updateUnit(_unit);
            }
          },
        );
}

class GoalItem extends StatelessWidget {
  final SessionGoal workoutGoal;
  final Function(SessionGoal?) updateWorkoutGoal;

  static Future<Timeframe?> _showTimeFrameDialog(
    BuildContext context, [
    Timeframe? selected,
  ]) async {
    return EnumDialog.show(
      context,
      "Select Timeframe",
      Timeframe.values.asMap().map((_, value) => MapEntry(value, value.name)),
      selected ?? Timeframe.values.first,
    );
  }

  const GoalItem({
    required this.workoutGoal,
    required this.updateWorkoutGoal,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Text(
                    workoutGoal.timeframe.name,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onTap: () async {
                    final _timeframe = await GoalItem._showTimeFrameDialog(
                      context,
                      workoutGoal.timeframe,
                    );
                    if (_timeframe == null) return;
                    if (_timeframe != workoutGoal.timeframe) {
                      updateWorkoutGoal(
                        SessionGoal(timeframe: _timeframe, count: 1),
                      );
                    }
                  },
                ),
                Dial<int>(
                  value: workoutGoal.count,
                  onUpdate: (int count) => updateWorkoutGoal(
                    workoutGoal.copyWith(count: count),
                  ),
                  increment: 1,
                  minv: 1,
                  maxv: workoutGoal.timeframe.max,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              iconSize: 26,
              onPressed: () => updateWorkoutGoal(null),
              icon: Icon(Icons.delete),
              splashRadius: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class WorkoutGoalSettingsItem extends SettingsRowItem {
  WorkoutGoalSettingsItem({
    required SessionGoal? workoutGoal,
    required Function(SessionGoal?) updateWorkoutGoal,
  }) : super(
          title: "Sessions",
          data: workoutGoal,
          getValue: (workoutGoal) => workoutGoal == null
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    "Define your Goals",
                    style: TextStyle(fontSize: 18),
                  ),
                )
              : GoalItem(
                  workoutGoal: workoutGoal,
                  updateWorkoutGoal: updateWorkoutGoal,
                ),
          changeValue: workoutGoal == null
              ? (context) async {
                  final _timeframe = await GoalItem._showTimeFrameDialog(
                    context,
                    workoutGoal?.timeframe,
                  );
                  if (_timeframe == null) return;
                  if (_timeframe != workoutGoal?.timeframe) {
                    updateWorkoutGoal(
                      SessionGoal(timeframe: _timeframe, count: 1),
                    );
                  }
                }
              : null,
        );
}

class RemindersItem<T> extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class WorkoutSettingsWidget extends ConsumerWidget {
  const WorkoutSettingsWidget();

  _buildContent(Settings settings, BuildContext context, WidgetRef ref) {
    final workoutSettings = settings.workoutSettings;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UnitsItem(
            unit: workoutSettings.unit,
            updateUnit: (unit) => updateSettings(
              ref,
              settings.copyWith(
                workoutSettings: workoutSettings.copyWith(unit: unit),
              ),
            ),
          ),
          WorkoutGoalSettingsItem(
            workoutGoal: workoutSettings.workoutGoal,
            updateWorkoutGoal: (workoutGoal) => updateSettings(
              ref,
              settings.copyWith(
                workoutSettings: workoutSettings.copyWith(
                  workoutGoal: workoutGoal,
                ),
              ),
            ),
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
    return ref.read(authControllerProvider).maybeWhen(
        data: (user) => ref.watch(settingsControllerProvider(user)).when(
              data: (settings) => _buildContent(settings, context, ref),
              loading: () => _buildLoading(),
              error: (error, _) => _buildError(error),
            ),
        orElse: () => _buildError("Not logged in!"));
  }
}
