// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExerciseSet _$ExerciseSetFromJson(Map<String, dynamic> json) {
  return _ExerciseSet.fromJson(json);
}

/// @nodoc
class _$ExerciseSetTearOff {
  const _$ExerciseSetTearOff();

  _ExerciseSet call(
      {required int count, required int pauseSeconds, double? weight}) {
    return _ExerciseSet(
      count: count,
      pauseSeconds: pauseSeconds,
      weight: weight,
    );
  }

  ExerciseSet fromJson(Map<String, Object> json) {
    return ExerciseSet.fromJson(json);
  }
}

/// @nodoc
const $ExerciseSet = _$ExerciseSetTearOff();

/// @nodoc
mixin _$ExerciseSet {
  int get count => throw _privateConstructorUsedError;
  int get pauseSeconds => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseSetCopyWith<ExerciseSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSetCopyWith<$Res> {
  factory $ExerciseSetCopyWith(
          ExerciseSet value, $Res Function(ExerciseSet) then) =
      _$ExerciseSetCopyWithImpl<$Res>;
  $Res call({int count, int pauseSeconds, double? weight});
}

/// @nodoc
class _$ExerciseSetCopyWithImpl<$Res> implements $ExerciseSetCopyWith<$Res> {
  _$ExerciseSetCopyWithImpl(this._value, this._then);

  final ExerciseSet _value;
  // ignore: unused_field
  final $Res Function(ExerciseSet) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? pauseSeconds = freezed,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pauseSeconds: pauseSeconds == freezed
          ? _value.pauseSeconds
          : pauseSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$ExerciseSetCopyWith<$Res>
    implements $ExerciseSetCopyWith<$Res> {
  factory _$ExerciseSetCopyWith(
          _ExerciseSet value, $Res Function(_ExerciseSet) then) =
      __$ExerciseSetCopyWithImpl<$Res>;
  @override
  $Res call({int count, int pauseSeconds, double? weight});
}

/// @nodoc
class __$ExerciseSetCopyWithImpl<$Res> extends _$ExerciseSetCopyWithImpl<$Res>
    implements _$ExerciseSetCopyWith<$Res> {
  __$ExerciseSetCopyWithImpl(
      _ExerciseSet _value, $Res Function(_ExerciseSet) _then)
      : super(_value, (v) => _then(v as _ExerciseSet));

  @override
  _ExerciseSet get _value => super._value as _ExerciseSet;

  @override
  $Res call({
    Object? count = freezed,
    Object? pauseSeconds = freezed,
    Object? weight = freezed,
  }) {
    return _then(_ExerciseSet(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pauseSeconds: pauseSeconds == freezed
          ? _value.pauseSeconds
          : pauseSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExerciseSet extends _ExerciseSet {
  const _$_ExerciseSet(
      {required this.count, required this.pauseSeconds, this.weight})
      : super._();

  factory _$_ExerciseSet.fromJson(Map<String, dynamic> json) =>
      _$$_ExerciseSetFromJson(json);

  @override
  final int count;
  @override
  final int pauseSeconds;
  @override
  final double? weight;

  @override
  String toString() {
    return 'ExerciseSet(count: $count, pauseSeconds: $pauseSeconds, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseSet &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.pauseSeconds, pauseSeconds) ||
                const DeepCollectionEquality()
                    .equals(other.pauseSeconds, pauseSeconds)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(pauseSeconds) ^
      const DeepCollectionEquality().hash(weight);

  @JsonKey(ignore: true)
  @override
  _$ExerciseSetCopyWith<_ExerciseSet> get copyWith =>
      __$ExerciseSetCopyWithImpl<_ExerciseSet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExerciseSetToJson(this);
  }
}

abstract class _ExerciseSet extends ExerciseSet {
  const factory _ExerciseSet(
      {required int count,
      required int pauseSeconds,
      double? weight}) = _$_ExerciseSet;
  const _ExerciseSet._() : super._();

  factory _ExerciseSet.fromJson(Map<String, dynamic> json) =
      _$_ExerciseSet.fromJson;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  int get pauseSeconds => throw _privateConstructorUsedError;
  @override
  double? get weight => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExerciseSetCopyWith<_ExerciseSet> get copyWith =>
      throw _privateConstructorUsedError;
}
