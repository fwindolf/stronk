import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/common_widgets/enum_dropdown_field.dart';

import 'package:stronk/app/exercises/exercises_tag_field_widget.dart';
import 'package:stronk/app/exercises/instruction_field.dart';
import 'package:stronk/app/exercises/muscle_field_widget.dart';

import 'package:stronk/controllers/auth_controller.dart';
import 'package:stronk/controllers/exercise_tag_controller.dart';
import 'package:stronk/repositories/exercise_tag_repository.dart';
import 'package:stronk/repositories/muscle_repository.dart';

import 'package:stronk/util/validation.dart';
import 'package:stronk/app/exercises/exercise_validation.dart';

import 'package:stronk/models/exercise/exercise.dart';
import 'package:stronk/models/exercise/exercise_tag.dart';
import 'package:stronk/models/muscle/muscle.dart';

import 'package:stronk/repositories/exercise_repository.dart';

final exerciseValidationProvider =
    StateNotifierProvider<ExerciseValidationNotifier, ExerciseValidationItems>((ref) {
  return ExerciseValidationNotifier();
});

class ExerciseNameFormField extends StatelessWidget {
  final ValidationItem state;
  final Function updateState;

  const ExerciseNameFormField({required this.state, required this.updateState});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          labelText: "Name",
          errorText: state.error,
          border: OutlineInputBorder(),
        ),
        textInputAction: TextInputAction.next,
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

    final user = ref.read(authControllerProvider);
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
      validator.updateType(editedExercise!.type);
      validator.updateInstructions(editedExercise!.instructions);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(editedExercise != null ? "Edit Exercise" : "New Exercise"),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.save), onPressed: () => _saveForm(context, ref)),
        ],
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
                  child: ExerciseNameFormField(
                    state: ref.watch(exerciseValidationProvider).name,
                    updateState: ref.read(exerciseValidationProvider.notifier).updateName,
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
                    child: MuscleField(
                      state: ref.watch(exerciseValidationProvider).muscles,
                      updateState: ref.read(exerciseValidationProvider.notifier).updateMuscles,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0, left: 5, right: 5),
                  child: EnumDropdownField<ExerciseType>(
                    name: "Exercise Type",
                    choices: Map<ExerciseType, String>.fromIterable(
                      ExerciseType.values,
                      key: (e) => e,
                      value: (e) => (e as ExerciseType).description,
                    ),
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
