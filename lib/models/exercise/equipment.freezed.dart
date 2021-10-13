// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'equipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BandEquipment _$BandEquipmentFromJson(Map<String, dynamic> json) {
  return _BandEquipment.fromJson(json);
}

/// @nodoc
class _$BandEquipmentTearOff {
  const _$BandEquipmentTearOff();

  _BandEquipment call(
      {String? id,
      required List<Instruction> instructions,
      required BandMode mode}) {
    return _BandEquipment(
      id: id,
      instructions: instructions,
      mode: mode,
    );
  }

  BandEquipment fromJson(Map<String, Object> json) {
    return BandEquipment.fromJson(json);
  }
}

/// @nodoc
const $BandEquipment = _$BandEquipmentTearOff();

/// @nodoc
mixin _$BandEquipment {
  String? get id => throw _privateConstructorUsedError;
  List<Instruction> get instructions => throw _privateConstructorUsedError;
  BandMode get mode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BandEquipmentCopyWith<BandEquipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BandEquipmentCopyWith<$Res> {
  factory $BandEquipmentCopyWith(
          BandEquipment value, $Res Function(BandEquipment) then) =
      _$BandEquipmentCopyWithImpl<$Res>;
  $Res call({String? id, List<Instruction> instructions, BandMode mode});
}

/// @nodoc
class _$BandEquipmentCopyWithImpl<$Res>
    implements $BandEquipmentCopyWith<$Res> {
  _$BandEquipmentCopyWithImpl(this._value, this._then);

  final BandEquipment _value;
  // ignore: unused_field
  final $Res Function(BandEquipment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? instructions = freezed,
    Object? mode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<Instruction>,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as BandMode,
    ));
  }
}

/// @nodoc
abstract class _$BandEquipmentCopyWith<$Res>
    implements $BandEquipmentCopyWith<$Res> {
  factory _$BandEquipmentCopyWith(
          _BandEquipment value, $Res Function(_BandEquipment) then) =
      __$BandEquipmentCopyWithImpl<$Res>;
  @override
  $Res call({String? id, List<Instruction> instructions, BandMode mode});
}

/// @nodoc
class __$BandEquipmentCopyWithImpl<$Res>
    extends _$BandEquipmentCopyWithImpl<$Res>
    implements _$BandEquipmentCopyWith<$Res> {
  __$BandEquipmentCopyWithImpl(
      _BandEquipment _value, $Res Function(_BandEquipment) _then)
      : super(_value, (v) => _then(v as _BandEquipment));

  @override
  _BandEquipment get _value => super._value as _BandEquipment;

  @override
  $Res call({
    Object? id = freezed,
    Object? instructions = freezed,
    Object? mode = freezed,
  }) {
    return _then(_BandEquipment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<Instruction>,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as BandMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(Equipment)
class _$_BandEquipment extends _BandEquipment {
  _$_BandEquipment({this.id, required this.instructions, required this.mode})
      : super._();

  factory _$_BandEquipment.fromJson(Map<String, dynamic> json) =>
      _$$_BandEquipmentFromJson(json);

  @override
  final String? id;
  @override
  final List<Instruction> instructions;
  @override
  final BandMode mode;

  @override
  String toString() {
    return 'BandEquipment(id: $id, instructions: $instructions, mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BandEquipment &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.instructions, instructions) ||
                const DeepCollectionEquality()
                    .equals(other.instructions, instructions)) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(instructions) ^
      const DeepCollectionEquality().hash(mode);

  @JsonKey(ignore: true)
  @override
  _$BandEquipmentCopyWith<_BandEquipment> get copyWith =>
      __$BandEquipmentCopyWithImpl<_BandEquipment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BandEquipmentToJson(this);
  }
}

abstract class _BandEquipment extends BandEquipment implements Equipment {
  factory _BandEquipment(
      {String? id,
      required List<Instruction> instructions,
      required BandMode mode}) = _$_BandEquipment;
  _BandEquipment._() : super._();

  factory _BandEquipment.fromJson(Map<String, dynamic> json) =
      _$_BandEquipment.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  List<Instruction> get instructions => throw _privateConstructorUsedError;
  @override
  BandMode get mode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BandEquipmentCopyWith<_BandEquipment> get copyWith =>
      throw _privateConstructorUsedError;
}

DumbbellEquipment _$DumbbellEquipmentFromJson(Map<String, dynamic> json) {
  return _DumbbellEquipment.fromJson(json);
}

/// @nodoc
class _$DumbbellEquipmentTearOff {
  const _$DumbbellEquipmentTearOff();

  _DumbbellEquipment call(
      {String? id,
      required List<Instruction> instructions,
      required SideMode mode}) {
    return _DumbbellEquipment(
      id: id,
      instructions: instructions,
      mode: mode,
    );
  }

  DumbbellEquipment fromJson(Map<String, Object> json) {
    return DumbbellEquipment.fromJson(json);
  }
}

/// @nodoc
const $DumbbellEquipment = _$DumbbellEquipmentTearOff();

/// @nodoc
mixin _$DumbbellEquipment {
  String? get id => throw _privateConstructorUsedError;
  List<Instruction> get instructions => throw _privateConstructorUsedError;
  SideMode get mode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DumbbellEquipmentCopyWith<DumbbellEquipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DumbbellEquipmentCopyWith<$Res> {
  factory $DumbbellEquipmentCopyWith(
          DumbbellEquipment value, $Res Function(DumbbellEquipment) then) =
      _$DumbbellEquipmentCopyWithImpl<$Res>;
  $Res call({String? id, List<Instruction> instructions, SideMode mode});
}

/// @nodoc
class _$DumbbellEquipmentCopyWithImpl<$Res>
    implements $DumbbellEquipmentCopyWith<$Res> {
  _$DumbbellEquipmentCopyWithImpl(this._value, this._then);

  final DumbbellEquipment _value;
  // ignore: unused_field
  final $Res Function(DumbbellEquipment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? instructions = freezed,
    Object? mode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<Instruction>,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as SideMode,
    ));
  }
}

/// @nodoc
abstract class _$DumbbellEquipmentCopyWith<$Res>
    implements $DumbbellEquipmentCopyWith<$Res> {
  factory _$DumbbellEquipmentCopyWith(
          _DumbbellEquipment value, $Res Function(_DumbbellEquipment) then) =
      __$DumbbellEquipmentCopyWithImpl<$Res>;
  @override
  $Res call({String? id, List<Instruction> instructions, SideMode mode});
}

/// @nodoc
class __$DumbbellEquipmentCopyWithImpl<$Res>
    extends _$DumbbellEquipmentCopyWithImpl<$Res>
    implements _$DumbbellEquipmentCopyWith<$Res> {
  __$DumbbellEquipmentCopyWithImpl(
      _DumbbellEquipment _value, $Res Function(_DumbbellEquipment) _then)
      : super(_value, (v) => _then(v as _DumbbellEquipment));

  @override
  _DumbbellEquipment get _value => super._value as _DumbbellEquipment;

  @override
  $Res call({
    Object? id = freezed,
    Object? instructions = freezed,
    Object? mode = freezed,
  }) {
    return _then(_DumbbellEquipment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<Instruction>,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as SideMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(Equipment)
class _$_DumbbellEquipment extends _DumbbellEquipment {
  _$_DumbbellEquipment(
      {this.id, required this.instructions, required this.mode})
      : super._();

  factory _$_DumbbellEquipment.fromJson(Map<String, dynamic> json) =>
      _$$_DumbbellEquipmentFromJson(json);

  @override
  final String? id;
  @override
  final List<Instruction> instructions;
  @override
  final SideMode mode;

  @override
  String toString() {
    return 'DumbbellEquipment(id: $id, instructions: $instructions, mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DumbbellEquipment &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.instructions, instructions) ||
                const DeepCollectionEquality()
                    .equals(other.instructions, instructions)) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(instructions) ^
      const DeepCollectionEquality().hash(mode);

  @JsonKey(ignore: true)
  @override
  _$DumbbellEquipmentCopyWith<_DumbbellEquipment> get copyWith =>
      __$DumbbellEquipmentCopyWithImpl<_DumbbellEquipment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DumbbellEquipmentToJson(this);
  }
}

abstract class _DumbbellEquipment extends DumbbellEquipment
    implements Equipment {
  factory _DumbbellEquipment(
      {String? id,
      required List<Instruction> instructions,
      required SideMode mode}) = _$_DumbbellEquipment;
  _DumbbellEquipment._() : super._();

  factory _DumbbellEquipment.fromJson(Map<String, dynamic> json) =
      _$_DumbbellEquipment.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  List<Instruction> get instructions => throw _privateConstructorUsedError;
  @override
  SideMode get mode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DumbbellEquipmentCopyWith<_DumbbellEquipment> get copyWith =>
      throw _privateConstructorUsedError;
}
