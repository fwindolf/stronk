import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'workout_tag.freezed.dart';
part 'workout_tag.g.dart';

@freezed
class WorkoutTag with _$WorkoutTag {
  const WorkoutTag._();

  const factory WorkoutTag({
    String? id,
    required String name,
    @Default(false) bool active,
  }) = _WorkoutTag;

  factory WorkoutTag.empty() => const WorkoutTag(name: '');

  factory WorkoutTag.fromJson(Map<String, dynamic> json) => _$WorkoutTagFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
