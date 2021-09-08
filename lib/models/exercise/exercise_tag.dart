import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'exercise_tag.freezed.dart';
part 'exercise_tag.g.dart';

@freezed
class ExerciseTag with _$ExerciseTag {
  const ExerciseTag._();

  const factory ExerciseTag({
    String? id,
    required String name,
    @Default(false) bool active,
  }) = _ExerciseTag;

  factory ExerciseTag.empty() => const ExerciseTag(name: '');

  factory ExerciseTag.fromJson(Map<String, dynamic> json) => _$ExerciseTagFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
