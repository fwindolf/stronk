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

extension MuscleRegionDescription on MuscleRegion {
  String get description {
    switch (this) {
      case MuscleRegion.Neck:
        return "Neck";
      case MuscleRegion.Shoulder:
        return "Shoulders";
      case MuscleRegion.Chest:
        return "Chest";
      case MuscleRegion.Abs:
        return "Abs / Belly";
      case MuscleRegion.Back:
        return "Upper / Lower Back";
      case MuscleRegion.Glutes:
        return "Glutes";
      case MuscleRegion.Arms:
        return "Arms";
      case MuscleRegion.Legs:
        return "Legs";
      default:
        return "??";
    }
  }
}

enum MuscleSide {
  Front,
  Back,
  Both,
}

extension MuscleSideDescription on MuscleSide {
  String get description {
    switch (this) {
      case MuscleSide.Front:
        return "Front Side";
      case MuscleSide.Back:
        return "Back Side";
      case MuscleSide.Both:
        return "Both Sides";
      default:
        return "??";
    }
  }
}

@freezed
class Muscle with _$Muscle {
  const Muscle._();

  const factory Muscle({
    String? id,
    required String name,
    MuscleRegion? region,
    MuscleSide? side,
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
