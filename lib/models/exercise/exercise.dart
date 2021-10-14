import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quiver/iterables.dart';
import 'package:stronk/models/exercise/exercise_types.dart';
import 'package:stronk/models/exercise/instruction.dart';
import 'package:stronk/models/exercise/exercise_tag.dart';
import 'package:stronk/models/exercise/set.dart';
import 'package:stronk/models/muscle/muscle.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

enum Equipment {
  Band,
  Dumbbells,
  Barbells,
  Bodyweight,
  None,
}

extension EquipmentName on Equipment {
  String get name {
    return this.toString().split(".")[1];
  }
}

enum BandMode {
  Loop,
  Double,
}

enum SideMode {
  None,
  Single,
  Both,
  Alternating,
}

@freezed
class ExerciseConfiguration with _$ExerciseConfiguration {
  const ExerciseConfiguration._();

  const factory ExerciseConfiguration({
    required ExerciseType type,
    required List<ExerciseSet> sets,
  }) = _ExerciseConfiguration;

  factory ExerciseConfiguration.empty() => ExerciseConfiguration(
        type: ExerciseType.SetRepetition,
        sets: [
          ExerciseSet.empty(),
          ExerciseSet.empty(),
          ExerciseSet.empty(),
        ],
      );

  factory ExerciseConfiguration.fromString(String source) {
    var type;
    switch (source.replaceAll(" ", "").toLowerCase()) {
      case "setrepetition":
        type = ExerciseType.SetRepetition;
        break;
      case "threetoseven":
        type = ExerciseType.ThreeToSeven;
        break;
      case "dopause":
        type = ExerciseType.DoPause;
        break;
      case "hold":
        type = ExerciseType.Hold;
        break;
      case "flow":
        type = ExerciseType.Flow;
        break;
      default:
        type = ExerciseType.SetRepetition;
    }

    return ExerciseConfiguration(type: type, sets: ExerciseSetTypes.forType(type: type));
  }

  factory ExerciseConfiguration.fromJson(Map<String, dynamic> json) =>
      _$ExerciseConfigurationFromJson(json);
}

@freezed
class Exercise with _$Exercise {
  const Exercise._();

  const factory Exercise({
    required String id,
    required String name,
    required String description,
    required String? creator,
    required ExerciseConfiguration configuration,
    required Equipment equipment,
    BandMode? bandMode,
    required SideMode sideMode,
    @Default([]) List<ExerciseTag> tags,
    @Default([]) List<Muscle> muscles,
    required List<Instruction> instructions,
    @Default(false) bool isFavourite,
  }) = _Exercise;

  factory Exercise.empty({
    required String id,
    String? userId,
  }) =>
      Exercise(
        id: id,
        creator: userId,
        name: "New Exercise",
        description: "",
        configuration: ExerciseConfiguration.empty(),
        equipment: Equipment.None,
        sideMode: SideMode.Both,
        muscles: [],
        tags: [],
        instructions: [],
      );

  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);

  factory Exercise.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return Exercise.fromJson(data).copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson();

  bool belongsTo(User? user) {
    if (creator == null || user == null) return false;
    return creator == user.uid;
  }

  List<int> get repetitions => configuration.sets.map((ExerciseSet set) => set.count).toList();

  List<double?> get weights => configuration.sets.map((ExerciseSet set) => set.weight).toList();

  List<int> get pauseSeconds =>
      configuration.sets.map((ExerciseSet set) => set.pauseSeconds).toList();

  int get totalRepetitions => configuration.sets.fold(0, (prev, el) => prev + el.count);

  int get totalCount => totalRepetitions;

  double? get totalWeight =>
      configuration.sets.where((ExerciseSet set) => set.weight != null).isEmpty
          ? null
          : configuration.sets.fold(0.0, (prev, el) => prev! + (el.weight ?? 0.0));

  double get totalLoad =>
      zip([repetitions, weights]).fold(0.0, (val, el) => val + el[0]! * (el[1] ?? 1.0));
}
