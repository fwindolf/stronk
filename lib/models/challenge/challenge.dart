import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:stronk/models/exercise/exercise.dart';
import 'package:stronk/models/exercise/instruction.dart';
import 'package:stronk/models/exercise/set.dart';

part 'challenge.freezed.dart';
part 'challenge.g.dart';

@freezed
class Challenge with _$Challenge {
  const Challenge._();

  const factory Challenge({
    String? id,
    required String exerciseId,
    required String name,
    String? description,
    String? creator,
    required ExerciseConfiguration configuration,
    required Equipment equipment,
    required SideMode sideMode,
    required DateTime startDate,
    required List<Instruction> instructions,
    DateTime? endDate,
  }) = _Challenge;

  factory Challenge.fromExercise({
    String? creator,
    String? name,
    required Exercise exercise,
  }) =>
      Challenge(
        exerciseId: exercise.id,
        creator: creator ?? exercise.creator,
        name: name ?? exercise.name,
        description: exercise.description,
        configuration: exercise.configuration,
        equipment: exercise.equipment,
        sideMode: exercise.sideMode,
        startDate: DateTime.now(),
        instructions: exercise.instructions,
      );

  factory Challenge.fromJson(Map<String, dynamic> json) => _$ChallengeFromJson(json);

  factory Challenge.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return Challenge.fromJson(data).copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');

  double get totalLoad =>
      configuration.sets.fold(0.0, (val, ExerciseSet set) => val + set.count * (set.weight ?? 1.0));
}
