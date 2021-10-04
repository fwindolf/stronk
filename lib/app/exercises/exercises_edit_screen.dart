import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/exercises/exercise_type_field.dart';

import 'package:stronk/app/exercises/exercises_tag_field_widget.dart';
import 'package:stronk/app/exercises/instruction_field.dart';
import 'package:stronk/app/exercises/exercise_muscle_field.dart';

import 'package:stronk/controllers/auth_controller.dart';

import 'package:stronk/util/validation.dart';
import 'package:stronk/app/exercises/exercise_validation.dart';

import 'package:stronk/models/exercise/exercise.dart';

import 'package:stronk/repositories/exercise_repository.dart';

class ExerciseNameFormField extends StatefulWidget {
  final ValidationItem state;
  final Function updateState;

  const ExerciseNameFormField({required this.state, required this.updateState});

  @override
  State<ExerciseNameFormField> createState() => _ExerciseNameFormFieldState();
}

class _ExerciseNameFormFieldState extends State<ExerciseNameFormField> {
  String? _labelText = "Exercise Name";

  @override
  Widget build(BuildContext context) {
    if (widget.state.value != null || widget.state.error != null) {
      _labelText = null;
      print("Labeltext: $_labelText (${widget.state.value})");
    }

    return Container(
      alignment: Alignment.centerLeft,
      child: TextField(
        decoration: InputDecoration(
          labelText: _labelText,
          errorText: widget.state.error,
          errorStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: Theme.of(context).colorScheme.error,
                height: 0.3,
              ),
          isCollapsed: true,
          isDense: true,
          border: InputBorder.none,
        ),
        style: Theme.of(context).textTheme.headline6,
        autocorrect: false,
        textInputAction: TextInputAction.next,
        onChanged: (value) {
          setState(() {
            widget.updateState(value);
          });
        },
      ),
    );
  }
}

class ExerciseDescriptionFormField extends StatelessWidget {
  final ValidationItem state;
  final Function updateState;

  const ExerciseDescriptionFormField({required this.state, required this.updateState});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          labelText: "Exercise Description",
          errorText: state.error,
          border: OutlineInputBorder(),
        ),
        textInputAction: TextInputAction.next,
        minLines: 1,
        maxLines: 3,
        onChanged: (value) => updateState(value),
      ),
    );
  }
}

class ExerciseEditScreen extends ConsumerWidget {
  final Exercise? editedExercise;
  ExerciseEditScreen({Key? key, required this.editedExercise}) : super(key: key);

  final _form = GlobalKey<FormState>();

  void _saveForm(BuildContext context, WidgetRef ref) {
    // Run validation on all fields
    final validator = ref.read(exerciseValidationProvider.notifier);
    if (!validator.passing) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Error in the form, could not edit or create an Exercise"),
        ),
      );
      return;
    }

    final user = ref.read(authControllerProvider).maybeWhen(
          data: (user) => user,
          orElse: () => null,
        );

    if (user == null) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Log in to edit or create Exercises"),
        ),
      );
      return;
    }

    // Use the value in the providers to create a new exercise
    final state = ref.read(exerciseValidationProvider);
    if (editedExercise == null || editedExercise?.id == "") {
      // Exercise is null -> create new
      ref.read(exerciseRepositoryProvider).create(
            userId: user.uid,
            exercise: Exercise.empty(),
          );
    } else {
      // Exercise exists
      ref.read(exerciseRepositoryProvider).update(
            userId: user.uid,
            // TODO
            exercise: editedExercise!.copyWith(),
          );
    }

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final validator = ref.read(exerciseValidationProvider.notifier);
    if (editedExercise != null) {
      validator.updateName(editedExercise!.name);
      validator.updateDescription(editedExercise!.description);
      validator.updateTags(editedExercise!.tags);
      validator.updateMuscles(editedExercise!.muscles);
      validator.updateType(editedExercise!.configuration);
      validator.updateInstructions(editedExercise!.instructions);
    }

    return Scaffold(
      appBar: AppBar(
        // title: Text(editedExercise != null ? editedExercise!.name : "Exercise Name"),
        title: ExerciseNameFormField(
          state: ref.watch(exerciseValidationProvider).name,
          updateState: ref.read(exerciseValidationProvider.notifier).updateName,
        ),
        // actions: <Widget>[
        //   IconButton(icon: const Icon(Icons.save), onPressed: () => _saveForm(context, ref)),
        // ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _saveForm(context, ref),
        child: Icon(
          Icons.save_outlined,
        ),
      ),
      body: Form(
        key: _form,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 5, right: 5),
                  child: ExerciseDescriptionFormField(
                    state: ref.watch(exerciseValidationProvider).description,
                    updateState: ref.read(exerciseValidationProvider.notifier).updateDescription,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, left: 5, right: 5),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.shade500, // set border color
                          width: 1.0), // set border width
                      borderRadius:
                          BorderRadius.all(Radius.circular(5.0)), // set rounded corner radius
                    ),
                    constraints: BoxConstraints(minHeight: 40),
                    padding: const EdgeInsets.only(top: 5, bottom: 5.0, left: 7, right: 7),
                    child: ExercisesTagField(
                      state: ref.watch(exerciseValidationProvider).tags,
                      updateState: ref.read(exerciseValidationProvider.notifier).updateTags,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, left: 5, right: 5),
                  child: MuscleField(
                    state: ref.watch(exerciseValidationProvider).muscles,
                    updateState: ref.read(exerciseValidationProvider.notifier).updateMuscles,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0, left: 5, right: 5),
                  child: ExerciseTypeField(
                    state: ref.watch(exerciseValidationProvider).type,
                    updateState: ref.read(exerciseValidationProvider.notifier).updateType,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0, left: 5, right: 5),
                  child: InstructionField(
                    state: ref.watch(exerciseValidationProvider).instructions,
                    updateState: ref.read(exerciseValidationProvider.notifier).updateInstructions,
                  ),
                ),
                // NumberedListField(
                //   name: "Instruction",
                //   state: ref.watch(exerciseValidationProvider).instructions,
                //   updateState: ref.read(exerciseValidationProvider.notifier).updateInstructions,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
