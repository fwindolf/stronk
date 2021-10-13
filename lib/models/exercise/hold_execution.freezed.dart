// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hold_execution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimedHoldExecution _$TimedHoldExecutionFromJson(Map<String, dynamic> json) {
  return _TimedHoldExecution.fromJson(json);
}

/// @nodoc
class _$TimedHoldExecutionTearOff {
  const _$TimedHoldExecutionTearOff();

  _TimedHoldExecution call({String? id, required List<Set> sets}) {
    return _TimedHoldExecution(
      id: id,
      sets: sets,
    );
  }

  TimedHoldExecution fromJson(Map<String, Object> json) {
    return TimedHoldExecution.fromJson(json);
  }
}

/// @nodoc
const $TimedHoldExecution = _$TimedHoldExecutionTearOff();

/// @nodoc
mixin _$TimedHoldExecution {
  String? get id => throw _privateConstructorUsedError;
  List<Set> get sets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimedHoldExecutionCopyWith<TimedHoldExecution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimedHoldExecutionCopyWith<$Res> {
  factory $TimedHoldExecutionCopyWith(
          TimedHoldExecution value, $Res Function(TimedHoldExecution) then) =
      _$TimedHoldExecutionCopyWithImpl<$Res>;
  $Res call({String? id, List<Set> sets});
}

/// @nodoc
class _$TimedHoldExecutionCopyWithImpl<$Res>
    implements $TimedHoldExecutionCopyWith<$Res> {
  _$TimedHoldExecutionCopyWithImpl(this._value, this._then);

  final TimedHoldExecution _value;
  // ignore: unused_field
  final $Res Function(TimedHoldExecution) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? sets = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<Set>,
    ));
  }
}

/// @nodoc
abstract class _$TimedHoldExecutionCopyWith<$Res>
    implements $TimedHoldExecutionCopyWith<$Res> {
  factory _$TimedHoldExecutionCopyWith(
          _TimedHoldExecution value, $Res Function(_TimedHoldExecution) then) =
      __$TimedHoldExecutionCopyWithImpl<$Res>;
  @override
  $Res call({String? id, List<Set> sets});
}

/// @nodoc
class __$TimedHoldExecutionCopyWithImpl<$Res>
    extends _$TimedHoldExecutionCopyWithImpl<$Res>
    implements _$TimedHoldExecutionCopyWith<$Res> {
  __$TimedHoldExecutionCopyWithImpl(
      _TimedHoldExecution _value, $Res Function(_TimedHoldExecution) _then)
      : super(_value, (v) => _then(v as _TimedHoldExecution));

  @override
  _TimedHoldExecution get _value => super._value as _TimedHoldExecution;

  @override
  $Res call({
    Object? id = freezed,
    Object? sets = freezed,
  }) {
    return _then(_TimedHoldExecution(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<Set>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(HoldExecution)
class _$_TimedHoldExecution extends _TimedHoldExecution {
  _$_TimedHoldExecution({this.id, required this.sets}) : super._();

  factory _$_TimedHoldExecution.fromJson(Map<String, dynamic> json) =>
      _$$_TimedHoldExecutionFromJson(json);

  @override
  final String? id;
  @override
  final List<Set> sets;

  @override
  String toString() {
    return 'TimedHoldExecution(id: $id, sets: $sets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimedHoldExecution &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sets, sets) ||
                const DeepCollectionEquality().equals(other.sets, sets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(sets);

  @JsonKey(ignore: true)
  @override
  _$TimedHoldExecutionCopyWith<_TimedHoldExecution> get copyWith =>
      __$TimedHoldExecutionCopyWithImpl<_TimedHoldExecution>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimedHoldExecutionToJson(this);
  }
}

abstract class _TimedHoldExecution extends TimedHoldExecution
    implements HoldExecution {
  factory _TimedHoldExecution({String? id, required List<Set> sets}) =
      _$_TimedHoldExecution;
  _TimedHoldExecution._() : super._();

  factory _TimedHoldExecution.fromJson(Map<String, dynamic> json) =
      _$_TimedHoldExecution.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  List<Set> get sets => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TimedHoldExecutionCopyWith<_TimedHoldExecution> get copyWith =>
      throw _privateConstructorUsedError;
}
