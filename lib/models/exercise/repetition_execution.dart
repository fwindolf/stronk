import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiver/iterables.dart';
import 'package:stronk/models/exercise/execution.dart';
import 'package:stronk/models/exercise/set.dart';

part 'repetition_execution.freezed.dart';
part 'repetition_execution.g.dart';

abstract class RepetitionExecution extends Execution {
  int get totalRepetitions;
  double? get totalWeight;

  List<Set> get sets;
  List<int> get repetitions;
  List<int> get pauseSeconds;
  List<double?> get weights;
}

@freezed
class SetRepetitionExecution with _$SetRepetitionExecution {
  static final ExecutionType _type = ExecutionType(RepetitionType.SetRepetition);

  const SetRepetitionExecution._();

  @Implements(RepetitionExecution)
  factory SetRepetitionExecution({
    String? id,
    required List<Set> sets,
  }) = _SetRepetitionExecution;

  factory SetRepetitionExecution.eqalSets({
    required int sets,
    required int repetitions,
    required int pauseSeconds,
    double? weight,
  }) =>
      SetRepetitionExecution(
        sets: List.generate(
          sets,
          (_) => Set(
            count: repetitions,
            weight: weight,
            pauseSeconds: pauseSeconds,
          ),
        ),
      );

  factory SetRepetitionExecution.empty({
    double? weight,
  }) =>
      SetRepetitionExecution.eqalSets(
        sets: 3,
        repetitions: 12,
        pauseSeconds: 90,
        weight: weight,
      );

  factory SetRepetitionExecution.fromJson(Map<String, dynamic> json) =>
      _$SetRepetitionExecutionFromJson(json);

  factory SetRepetitionExecution.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return SetRepetitionExecution.fromJson(data).copyWith(id: doc.id);
  }

  @override
  List<int> get repetitions => sets.map((Set set) => set.count).toList();

  @override
  List<double?> get weights => sets.map((Set set) => set.weight).toList();

  @override
  List<int> get pauseSeconds => sets.map((Set set) => set.pauseSeconds).toList();

  @override
  int get totalRepetitions => sets.fold(0, (prev, el) => prev + el.count);

  @override
  int get totalCount => totalRepetitions;

  @override
  double? get totalWeight => sets.where((Set set) => set.weight != null).isEmpty
      ? null
      : sets.fold(0.0, (prev, el) => prev! + (el.weight ?? 0.0));

  @override
  double get totalLoad =>
      zip([repetitions, weights]).fold(0.0, (val, el) => val + el[0]! * (el[1] ?? 1.0));

  @override
  ExecutionType get type => _type;

  @override
  Map<String, dynamic> toDocument() => toJson();
}

final hC = ExecutionController.instance()
  ..register(SetRepetitionExecution._type, (args) => SetRepetitionExecution.fromJson(args));
