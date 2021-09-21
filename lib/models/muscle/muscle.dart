import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'muscle.freezed.dart';
part 'muscle.g.dart';

enum MuscleRegion {
  Neck,
  Shoulder,
  Chest,
  Abs,
  Back,
  Glutes,
  Arms,
  Legs,
}

@freezed
class Muscle with _$Muscle {
  const Muscle._();

  const factory Muscle({
    String? id,
    required String name,
    MuscleRegion? region,
    String? imagePath,
  }) = _Muscle;

  factory Muscle.empty() => const Muscle(name: '');

  factory Muscle.fromJson(Map<String, dynamic> json) => _$MuscleFromJson(json);

  factory Muscle.fromDocument(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return Muscle.fromJson(data).copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
