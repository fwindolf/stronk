import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stronk/models/exercise/execution.dart';
import 'package:stronk/util/validation.dart';

import 'package:stronk/models/exercise/exercise_tag.dart';
import 'package:stronk/models/exercise/instruction.dart';
import 'package:stronk/models/muscle/muscle.dart';

final exerciseValidationProvider =
    StateNotifierProvider<ExerciseValidationNotifier, ExerciseValidationItems>((ref) {
  return ExerciseValidationNotifier();
});

class ExerciseValidationItems {
  final ValidationItem<String> name;
  final ValidationItem<String> description;
  final ValidationItem<List<ExerciseTag>> tags;
  final ValidationItem<List<Muscle>> muscles;
  final ValidationItem<Execution> type;
  final ValidationItem<List<Instruction>> instructions;

  ExerciseValidationItems({
    this.name = const ValidationItem<String>(null, null),
    this.description = const ValidationItem<String>(null, null),
    this.tags = const ValidationItem<List<ExerciseTag>>(null, null),
    this.muscles = const ValidationItem<List<Muscle>>(null, null),
    this.type = const ValidationItem<Execution>(null, null),
    this.instructions = const ValidationItem<List<Instruction>>(null, null),
  });

  ExerciseValidationItems copyWith({
    name,
    description,
    tags,
    muscles,
    type,
    instructions,
  }) {
    return ExerciseValidationItems(
      name: name ?? this.name,
      description: description ?? this.description,
      tags: tags ?? this.tags,
      muscles: muscles ?? this.muscles,
      type: type ?? this.type,
      instructions: instructions ?? this.instructions,
    );
  }
}

class InstructionsValidator extends ValidatorBase<List<Instruction>> {
  @override
  bool isValid(List<Instruction>? value) {
    return value != null && value.isNotEmpty;
  }

  @override
  String? errorText(List<Instruction>? value) {
    if (value?.isEmpty ?? true) return null; // Clear error text
    for (var instruction in value!) {
      if (instruction.text.isEmpty) return "Invalid instruction items";
      if (instruction.text.length < 5) return "Instruction item too short";
      if (instruction.text.length > 100) return "Instruction item too long";
    }
    return null;
  }
}

class Validator {
  final nameValidator = StringValidator(
    minChars: 4,
    minError: "Name is too short.",
    maxChars: 50,
    maxError: "Name is too long.",
  );
  final descriptionValidator = StringValidator(
    minChars: 10,
    minError: "Description is too short.",
    maxChars: 100,
    maxError: "Description is too long.",
  );
  final tagValidator = ListValidator<ExerciseTag>(maxItems: 4, maxError: "Can't add more tags");
  final musclesValidator = ListValidator<Muscle>(minItems: 1, minError: "Need at least one muscle");
  final typeValidator = AlwaysValidValidator<Execution>();
  final instructionsValidator = InstructionsValidator();
}

class ExerciseValidationNotifier extends StateNotifier<ExerciseValidationItems> with Validator {
  ExerciseValidationNotifier({
    String? name,
    String? description,
    List<ExerciseTag>? tags,
    List<Muscle>? muscles,
    Execution? type,
    List<Instruction>? instructions,
  }) : super(
          ExerciseValidationItems(
            name: ValidationItem<String>(name, null),
            description: ValidationItem<String>(description, null),
            tags: ValidationItem<List<ExerciseTag>>(tags, null),
            muscles: ValidationItem<List<Muscle>>(muscles, null),
            type: ValidationItem<Execution>(type, null),
            instructions: ValidationItem<List<Instruction>>(instructions, null),
          ),
        );

  void validate() {
    if (!passing) return;
  }

  bool get passing {
    if (!nameValidator.isValid(state.name.value) ||
        !descriptionValidator.isValid(state.description.value) ||
        !instructionsValidator.isValid(state.instructions.value)) {
      return false;
    } else {
      return true;
    }
  }

  void updateName(String? value) {
    if (nameValidator.isValid(value)) {
      state = state.copyWith(name: ValidationItem<String>(value, null));
    } else {
      final error = nameValidator.errorText(value);
      state = state.copyWith(name: ValidationItem<String>(null, error));
    }
  }

  void updateDescription(String? value) {
    if (descriptionValidator.isValid(value)) {
      state = state.copyWith(description: ValidationItem<String>(value, null));
    } else {
      final error = descriptionValidator.errorText(value);
      state = state.copyWith(description: ValidationItem<String>(null, error));
    }
  }

  void updateTags(List<ExerciseTag>? value) {
    if (tagValidator.isValid(value)) {
      state = state.copyWith(tags: ValidationItem<List<ExerciseTag>>(value, null));
    } else {
      final error = tagValidator.errorText(value);
      state = state.copyWith(tags: ValidationItem<List<ExerciseTag>>(null, error));
    }
  }

  void updateMuscles(List<Muscle>? value) {
    if (musclesValidator.isValid(value)) {
      state = state.copyWith(muscles: ValidationItem<List<Muscle>>(value, null));
    } else {
      final error = musclesValidator.errorText(value);
      state = state.copyWith(muscles: ValidationItem<List<Muscle>>(null, error));
    }
  }

  void updateType(Execution? value) {
    if (typeValidator.isValid(value)) {
      state = state.copyWith(type: ValidationItem<Execution>(value, null));
    } else {
      final error = typeValidator.errorText(value);
      state = state.copyWith(type: ValidationItem<Execution>(null, error));
    }
  }

  void updateInstructions(List<Instruction>? value) {
    if (instructionsValidator.isValid(value)) {
      state = state.copyWith(instructions: ValidationItem<List<Instruction>>(value, null));
    } else {
      final error = instructionsValidator.errorText(value);
      state = state.copyWith(instructions: ValidationItem<List<Instruction>>(null, error));
    }
  }
}
