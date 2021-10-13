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

Set _$SetFromJson(Map<String, dynamic> json) {
  return _Set.fromJson(json);
}

/// @nodoc
class _$SetTearOff {
  const _$SetTearOff();

  _Set call({required int count, required int pauseSeconds, double? weight}) {
    return _Set(
      count: count,
      pauseSeconds: pauseSeconds,
      weight: weight,
    );
  }

  Set fromJson(Map<String, Object> json) {
    return Set.fromJson(json);
  }
}

/// @nodoc
const $Set = _$SetTearOff();

/// @nodoc
mixin _$Set {
  int get count => throw _privateConstructorUsedError;
  int get pauseSeconds => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetCopyWith<Set> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetCopyWith<$Res> {
  factory $SetCopyWith(Set value, $Res Function(Set) then) =
      _$SetCopyWithImpl<$Res>;
  $Res call({int count, int pauseSeconds, double? weight});
}

/// @nodoc
class _$SetCopyWithImpl<$Res> implements $SetCopyWith<$Res> {
  _$SetCopyWithImpl(this._value, this._then);

  final Set _value;
  // ignore: unused_field
  final $Res Function(Set) _then;

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
abstract class _$SetCopyWith<$Res> implements $SetCopyWith<$Res> {
  factory _$SetCopyWith(_Set value, $Res Function(_Set) then) =
      __$SetCopyWithImpl<$Res>;
  @override
  $Res call({int count, int pauseSeconds, double? weight});
}

/// @nodoc
class __$SetCopyWithImpl<$Res> extends _$SetCopyWithImpl<$Res>
    implements _$SetCopyWith<$Res> {
  __$SetCopyWithImpl(_Set _value, $Res Function(_Set) _then)
      : super(_value, (v) => _then(v as _Set));

  @override
  _Set get _value => super._value as _Set;

  @override
  $Res call({
    Object? count = freezed,
    Object? pauseSeconds = freezed,
    Object? weight = freezed,
  }) {
    return _then(_Set(
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
class _$_Set extends _Set {
  const _$_Set({required this.count, required this.pauseSeconds, this.weight})
      : super._();

  factory _$_Set.fromJson(Map<String, dynamic> json) => _$$_SetFromJson(json);

  @override
  final int count;
  @override
  final int pauseSeconds;
  @override
  final double? weight;

  @override
  String toString() {
    return 'Set(count: $count, pauseSeconds: $pauseSeconds, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Set &&
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
  _$SetCopyWith<_Set> get copyWith =>
      __$SetCopyWithImpl<_Set>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SetToJson(this);
  }
}

abstract class _Set extends Set {
  const factory _Set(
      {required int count, required int pauseSeconds, double? weight}) = _$_Set;
  const _Set._() : super._();

  factory _Set.fromJson(Map<String, dynamic> json) = _$_Set.fromJson;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  int get pauseSeconds => throw _privateConstructorUsedError;
  @override
  double? get weight => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SetCopyWith<_Set> get copyWith => throw _privateConstructorUsedError;
}
