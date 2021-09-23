import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/models/exercise/exercise_configuration.dart';
import 'package:stronk/models/exercise/exercise_types.dart';
import 'package:stronk/models/muscle/muscle.dart';
import 'package:stronk/util/validation.dart';

class ExerciseTypeConfigurationScreen extends StatelessWidget {
  const ExerciseTypeConfigurationScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Exercise Type"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemBuilder: (_, index) => Container(),
          itemCount: 1,
        ),
      ),
    );
  }
}

class SetRepetitionTypeField extends ConsumerWidget {
  final SetRepetitionConfiguration configuration;

  const SetRepetitionTypeField(this.configuration);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class ThreeToSevenTypeField extends ConsumerWidget {
  final ThreeToSevenConfiguration configuration;

  const ThreeToSevenTypeField(this.configuration);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class DoPauseTypeField extends ConsumerWidget {
  final DoPauseConfiguration configuration;

  const DoPauseTypeField(this.configuration);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class HoldTypeField extends ConsumerWidget {
  final HoldConfiguration configuration;

  const HoldTypeField(this.configuration);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class FlowTypeField extends ConsumerWidget {
  final FlowConfiguration configuration;

  const FlowTypeField(this.configuration);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class InvalidTypeField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Click the Icon to select an Exercise Type"),
    );
  }
}

class ExerciseTypeConfigurationBuilder extends StatelessWidget {
  final BaseExerciseTypeConfiguration? configuration;

  const ExerciseTypeConfigurationBuilder(this.configuration);

  @override
  Widget build(BuildContext context) {
    switch (configuration?.type) {
      case ExerciseType.SetRepetition:
        return SetRepetitionTypeField(configuration as SetRepetitionConfiguration);
      case ExerciseType.ThreeToSeven:
        return ThreeToSevenTypeField(configuration as ThreeToSevenConfiguration);
      case ExerciseType.DoPause:
        return DoPauseTypeField(configuration as DoPauseConfiguration);
      case ExerciseType.Hold:
        return HoldTypeField(configuration as HoldConfiguration);
      case ExerciseType.Flow:
        return FlowTypeField(configuration as FlowConfiguration);
      default:
        return InvalidTypeField();
    }
  }
}

class ExerciseTypeField extends ConsumerWidget {
  final ValidationItem<BaseExerciseTypeConfiguration> state;
  final Function(BaseExerciseTypeConfiguration?) updateState;

  const ExerciseTypeField({
    required this.state,
    required this.updateState,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final type = state.value;
    List<Widget> muscleWidgets = [];
    if (type == null) {
    } else {}

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.grey.shade500, // set border color
            width: 1.0), // set border width
        borderRadius: BorderRadius.all(Radius.circular(5.0)), // set rounded corner radius
      ),
      constraints: BoxConstraints(minHeight: 50),
      padding: const EdgeInsets.only(top: 5, bottom: 5.0, left: 7, right: 7),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ExerciseTypeConfigurationScreen(),
                  fullscreenDialog: true,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      flex: 2,
                      child: SizedBox(
                        width: 30,
                        height: 30,
                        child: ClipOval(
                          child: Material(
                            color: Colors.red,
                            child: Center(
                              child: Text(state.value?.type.description ?? "??"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Text(state.value?.type.description ?? "Type"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: ExerciseTypeConfigurationBuilder(state.value),
          ),
        ],
      ),
    );
  }
}
