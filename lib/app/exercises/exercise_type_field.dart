import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/models/exercise/exercise.dart';
import 'package:stronk/models/exercise/exercise_types.dart';
import 'package:stronk/models/exercise/set.dart';
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
          child: Column(
            children: ExerciseType.values.map((type) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: InkWell(
                  onTap: () => Navigator.of(context).pop(type),
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(),
                    ),
                    child: ListTile(
                      leading: SizedBox(
                        width: 50,
                        height: 50,
                        child: ClipOval(
                          child: Material(
                            color: Colors.grey.withOpacity(0.5),
                            child: Center(
                              child: Text(type.short),
                            ),
                          ),
                        ),
                      ),
                      title: Text(type.name),
                      subtitle: Text(type.description),
                    ),
                  ),
                ),
              );
            }).toList(),
          )),
    );
  }
}

class SetRepetitionTypeField extends ConsumerWidget {
  final List<ExerciseSet> configuration;

  const SetRepetitionTypeField(this.configuration);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child:
          Text("${configuration.length} X ${configuration[0].count} [${configuration[0].weight}]"),
    );
  }
}

// class ThreeToSevenTypeField extends ConsumerWidget {
//   final ThreeToSevenConfiguration configuration;

//   const ThreeToSevenTypeField(this.configuration);
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Container(
//       child: Text(
//           "${configuration.sets} X ${configuration.minRepetitions}-${configuration.maxRepetitions}"),
//     );
//   }
// }

// class DoPauseTypeField extends ConsumerWidget {
//   final DoPauseConfiguration configuration;

//   const DoPauseTypeField(this.configuration);
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }

// class HoldTypeField extends ConsumerWidget {
//   final HoldConfiguration configuration;

//   const HoldTypeField(this.configuration);
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }

// class FlowTypeField extends ConsumerWidget {
//   final FlowConfiguration configuration;

//   const FlowTypeField(this.configuration);
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }

class InvalidTypeField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Click the Icon to select an Exercise Type"),
    );
  }
}

class ExerciseTypeConfigurationBuilder extends StatelessWidget {
  final ExerciseConfiguration? configuration;

  const ExerciseTypeConfigurationBuilder(this.configuration);

  @override
  Widget build(BuildContext context) {
    if (configuration == null) {
      return InvalidTypeField();
    }

    switch (configuration!.type) {
      case ExerciseType.SetRepetition:
        return SetRepetitionTypeField(configuration!.sets);
      // case ExerciseType.ThreeToSeven:
      //   return ThreeToSevenTypeField(execution as ThreeToSevenConfiguration);
      // case ExerciseType.DoPause:
      //   return DoPauseTypeField(execution as DoPauseConfiguration);
      // case ExerciseType.Hold:
      //   return HoldTypeField(execution as HoldConfiguration);
      // case ExerciseType.Flow:
      //   return FlowTypeField(execution as FlowConfiguration);
      default:
        return InvalidTypeField();
    }
  }
}

class ExerciseTypeField extends ConsumerWidget {
  final ValidationItem<ExerciseConfiguration> state;
  final Function(ExerciseConfiguration?) updateState;

  const ExerciseTypeField({
    required this.state,
    required this.updateState,
  });

  void _updateType(ExerciseConfiguration configuration) {
    if (state.value != null) return;
    if (state.value!.type == configuration.type) return;

    if (configuration.sets.isEmpty) {
      print("From ${state.value!.sets} to ${configuration.type}");
    }
    updateState(configuration);
  }

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
      child: InkWell(
        onTap: () async {
          final type = await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => ExerciseTypeConfigurationScreen(),
              fullscreenDialog: true,
            ),
          );
          _updateType(type);
        },
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: SizedBox(
                    width: 50,
                    height: 40,
                    child: ClipOval(
                      child: Material(
                        color: Colors.grey.withOpacity(0.5),
                        child: Center(
                          child: Text(state.value?.type.short ?? "??"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 5,
              child: ExerciseTypeConfigurationBuilder(state.value),
            ),
          ],
        ),
      ),
    );
  }
}
