import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'instruction.freezed.dart';
part 'instruction.g.dart';

@freezed
class Instruction with _$Instruction {
  const Instruction._();

  const factory Instruction({
    String? id,
    required String text,
  }) = _Instruction;

  factory Instruction.empty() => const Instruction(text: '');

  factory Instruction.fromJson(Map<String, dynamic> json) => _$InstructionFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
