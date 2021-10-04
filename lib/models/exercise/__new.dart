import 'package:flutter/material.dart';

class Instruction {
  final String text;
  final Image? image;

  const Instruction({
    required this.text,
    this.image,
  });
}

class ExerciseDefinition {
  final String name;
  final String description;
  final List<Instruction> instructions;

  const ExerciseDefinition({
    required this.name,
    required this.description,
    required this.instructions,
  });
}

abstract class ExerciseConfiguration {
  int get type;
  double get loadEquivalent;
  int get pause;
}

class SetRepetitionConfiguration implements ExerciseConfiguration {
  final int _type = 0;

  final int sets;
  final int repetitions;
  final double weight;
  final int pauseSeconds;

  const SetRepetitionConfiguration({
    this.sets = 3,
    this.repetitions = 12,
    this.pauseSeconds = 120,
    required this.weight,
  });

  int get type => _type;
  double get loadEquivalent => sets * repetitions * weight;
  int get pause => pauseSeconds;
}

class ExerciseTemplate {
  final ExerciseDefinition definition;
  final ExerciseConfiguration configuration;

  final String? creatorId;
  final bool isFavourite;

  const ExerciseTemplate({
    this.creatorId,
    required this.definition,
    required this.configuration,
    this.isFavourite = false,
  });
}

class ExerciseLog {
  final ExerciseDefinition definition;
  final ExerciseConfiguration configuration;

  final String userId;
  final DateTime start;
  final DateTime? end;

  const ExerciseLog({
    required this.userId,
    required this.definition,
    required this.configuration,
    required this.start,
    this.end,
  });

  factory ExerciseLog.fromTemplate(
    String userId,
    ExerciseTemplate template,
    ExerciseConfiguration? configuration,
  ) =>
      ExerciseLog(
        userId: userId,
        configuration: configuration ?? template.configuration,
        definition: template.definition,
        start: DateTime.now(),
      );
}

class ExerciseRecord {
  final String userId;
  final ExerciseDefinition definition;

  final DateTime datetime;
  final double maxLoadEquivalent;

  const ExerciseRecord({
    required this.userId,
    required this.definition,
    required this.datetime,
    required this.maxLoadEquivalent,
  });

  factory ExerciseRecord.fromExercise(ExerciseLog exercise) => ExerciseRecord(
        userId: exercise.userId,
        definition: exercise.definition,
        datetime: exercise.end ?? DateTime.now(),
        maxLoadEquivalent: exercise.configuration.loadEquivalent,
      );
}

class WorkoutTemplate {
  final String? creatorId;
  final List<ExerciseTemplate> exercises;

  const WorkoutTemplate({
    this.creatorId,
    required this.exercises,
  });
}

class WorkoutLog {
  final String userId;
  final List<ExerciseLog> exercises;

  const WorkoutLog({
    required this.userId,
    required this.exercises,
  });
}
