import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set.freezed.dart';
part 'set.g.dart';

@freezed
class Set with _$Set {
  const Set._();

  const factory Set({
    required int count,
    required int pauseSeconds,
    double? weight,
  }) = _Set;

  factory Set.fromJson(Map<String, dynamic> json) => _$SetFromJson(json);

  factory Set.fromDocument(DocumentSnapshot doc) =>
      Set.fromJson(doc.data()! as Map<String, dynamic>);

  Map<String, dynamic> toDocument() => toJson();
}
