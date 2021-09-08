// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'instruction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Instruction _$InstructionFromJson(Map<String, dynamic> json) {
  return _Instruction.fromJson(json);
}

/// @nodoc
class _$InstructionTearOff {
  const _$InstructionTearOff();

  _Instruction call({String? id, required String text}) {
    return _Instruction(
      id: id,
      text: text,
    );
  }

  Instruction fromJson(Map<String, Object> json) {
    return Instruction.fromJson(json);
  }
}

/// @nodoc
const $Instruction = _$InstructionTearOff();

/// @nodoc
mixin _$Instruction {
  String? get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstructionCopyWith<Instruction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionCopyWith<$Res> {
  factory $InstructionCopyWith(
          Instruction value, $Res Function(Instruction) then) =
      _$InstructionCopyWithImpl<$Res>;
  $Res call({String? id, String text});
}

/// @nodoc
class _$InstructionCopyWithImpl<$Res> implements $InstructionCopyWith<$Res> {
  _$InstructionCopyWithImpl(this._value, this._then);

  final Instruction _value;
  // ignore: unused_field
  final $Res Function(Instruction) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InstructionCopyWith<$Res>
    implements $InstructionCopyWith<$Res> {
  factory _$InstructionCopyWith(
          _Instruction value, $Res Function(_Instruction) then) =
      __$InstructionCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String text});
}

/// @nodoc
class __$InstructionCopyWithImpl<$Res> extends _$InstructionCopyWithImpl<$Res>
    implements _$InstructionCopyWith<$Res> {
  __$InstructionCopyWithImpl(
      _Instruction _value, $Res Function(_Instruction) _then)
      : super(_value, (v) => _then(v as _Instruction));

  @override
  _Instruction get _value => super._value as _Instruction;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
  }) {
    return _then(_Instruction(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Instruction extends _Instruction with DiagnosticableTreeMixin {
  const _$_Instruction({this.id, required this.text}) : super._();

  factory _$_Instruction.fromJson(Map<String, dynamic> json) =>
      _$$_InstructionFromJson(json);

  @override
  final String? id;
  @override
  final String text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Instruction(id: $id, text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Instruction'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Instruction &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$InstructionCopyWith<_Instruction> get copyWith =>
      __$InstructionCopyWithImpl<_Instruction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstructionToJson(this);
  }
}

abstract class _Instruction extends Instruction {
  const factory _Instruction({String? id, required String text}) =
      _$_Instruction;
  const _Instruction._() : super._();

  factory _Instruction.fromJson(Map<String, dynamic> json) =
      _$_Instruction.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InstructionCopyWith<_Instruction> get copyWith =>
      throw _privateConstructorUsedError;
}
