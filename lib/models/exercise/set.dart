import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set.freezed.dart';
part 'set.g.dart';

@freezed
class ExerciseSet with _$ExerciseSet {
  const ExerciseSet._();

  const factory ExerciseSet({
    required int count,
    required int pauseSeconds,
    double? weight,
  }) = _ExerciseSet;

  factory ExerciseSet.empty() => ExerciseSet(count: 12, pauseSeconds: 90);

  factory ExerciseSet.fromJson(Map<String, dynamic> json) => _$ExerciseSetFromJson(json);

  factory ExerciseSet.fromDocument(DocumentSnapshot doc) =>
      ExerciseSet.fromJson(doc.data()! as Map<String, dynamic>);

  Map<String, dynamic> toDocument() => toJson();
}
