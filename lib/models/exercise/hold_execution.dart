import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiver/iterables.dart';
import 'package:stronk/models/exercise/execution.dart';
import 'package:stronk/models/exercise/set.dart';

part 'hold_execution.freezed.dart';
part 'hold_execution.g.dart';

abstract class HoldExecution implements Execution {
  int get totalSeconds;
  double? get totalWeight;

  List<int> get seconds;
  List<double?> get weights;
  List<int> get pauseSeconds;
}

@freezed
class TimedHoldExecution with _$TimedHoldExecution {
  static final ExecutionType _type = ExecutionType(HoldType.Hold);

  const TimedHoldExecution._();

  @Implements(HoldExecution)
  factory TimedHoldExecution({
    String? id,
    required List<Set> sets,
  }) = _TimedHoldExecution;

  factory TimedHoldExecution.empty({
    double? weight,
  }) =>
      TimedHoldExecution(
        sets: [
          Set(count: 60, pauseSeconds: 30, weight: weight),
        ],
      );

  factory TimedHoldExecution.fromJson(Map<String, dynamic> json) =>
      _$TimedHoldExecutionFromJson(json);

  factory TimedHoldExecution.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return TimedHoldExecution.fromJson(data).copyWith(id: doc.id);
  }

  @override
  List<int> get seconds => sets.map((Set set) => set.count).toList();

  @override
  List<double?> get weights => sets.map((Set set) => set.weight).toList();

  @override
  List<int> get pauseSeconds => sets.map((Set set) => set.pauseSeconds).toList();

  @override
  int get totalSeconds => sets.fold(0, (prev, el) => prev + el.count);

  @override
  double? get totalWeight => sets.where((Set set) => set.weight != null).isEmpty
      ? null
      : sets.fold(0.0, (prev, el) => prev! + (el.weight ?? 0.0));

  @override
  double get totalLoad =>
      zip([seconds, weights]).fold(0.0, (val, el) => val + el[0]! * (el[1] ?? 1.0));

  @override
  int get totalCount => totalSeconds;

  @override
  ExecutionType get type => _type;

  @override
  Map<String, dynamic> toDocument() => toJson();
}

final hC = ExecutionController.instance()
  ..register(TimedHoldExecution._type, (args) => TimedHoldExecution.fromJson(args));
