// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'completed_exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompletedExercise _$CompletedExerciseFromJson(Map<String, dynamic> json) {
  return _CompletedExercise.fromJson(json);
}

/// @nodoc
class _$CompletedExerciseTearOff {
  const _$CompletedExerciseTearOff();

  _CompletedExercise call(
      {String? id,
      required String creator,
      required Exercise source,
      required String name,
      required ExerciseTypeConfiguration configuration,
      required DateTime timestamp}) {
    return _CompletedExercise(
      id: id,
      creator: creator,
      source: source,
      name: name,
      configuration: configuration,
      timestamp: timestamp,
    );
  }

  CompletedExercise fromJson(Map<String, Object> json) {
    return CompletedExercise.fromJson(json);
  }
}

/// @nodoc
const $CompletedExercise = _$CompletedExerciseTearOff();

/// @nodoc
mixin _$CompletedExercise {
  String? get id => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  Exercise get source => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ExerciseTypeConfiguration get configuration =>
      throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletedExerciseCopyWith<CompletedExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedExerciseCopyWith<$Res> {
  factory $CompletedExerciseCopyWith(
          CompletedExercise value, $Res Function(CompletedExercise) then) =
      _$CompletedExerciseCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String creator,
      Exercise source,
      String name,
      ExerciseTypeConfiguration configuration,
      DateTime timestamp});

  $ExerciseCopyWith<$Res> get source;
}

/// @nodoc
class _$CompletedExerciseCopyWithImpl<$Res>
    implements $CompletedExerciseCopyWith<$Res> {
  _$CompletedExerciseCopyWithImpl(this._value, this._then);

  final CompletedExercise _value;
  // ignore: unused_field
  final $Res Function(CompletedExercise) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? creator = freezed,
    Object? source = freezed,
    Object? name = freezed,
    Object? configuration = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Exercise,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      configuration: configuration == freezed
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as ExerciseTypeConfiguration,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $ExerciseCopyWith<$Res> get source {
    return $ExerciseCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value));
    });
  }
}

/// @nodoc
abstract class _$CompletedExerciseCopyWith<$Res>
    implements $CompletedExerciseCopyWith<$Res> {
  factory _$CompletedExerciseCopyWith(
          _CompletedExercise value, $Res Function(_CompletedExercise) then) =
      __$CompletedExerciseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String creator,
      Exercise source,
      String name,
      ExerciseTypeConfiguration configuration,
      DateTime timestamp});

  @override
  $ExerciseCopyWith<$Res> get source;
}

/// @nodoc
class __$CompletedExerciseCopyWithImpl<$Res>
    extends _$CompletedExerciseCopyWithImpl<$Res>
    implements _$CompletedExerciseCopyWith<$Res> {
  __$CompletedExerciseCopyWithImpl(
      _CompletedExercise _value, $Res Function(_CompletedExercise) _then)
      : super(_value, (v) => _then(v as _CompletedExercise));

  @override
  _CompletedExercise get _value => super._value as _CompletedExercise;

  @override
  $Res call({
    Object? id = freezed,
    Object? creator = freezed,
    Object? source = freezed,
    Object? name = freezed,
    Object? configuration = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_CompletedExercise(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Exercise,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      configuration: configuration == freezed
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as ExerciseTypeConfiguration,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompletedExercise extends _CompletedExercise {
  const _$_CompletedExercise(
      {this.id,
      required this.creator,
      required this.source,
      required this.name,
      required this.configuration,
      required this.timestamp})
      : super._();

  factory _$_CompletedExercise.fromJson(Map<String, dynamic> json) =>
      _$$_CompletedExerciseFromJson(json);

  @override
  final String? id;
  @override
  final String creator;
  @override
  final Exercise source;
  @override
  final String name;
  @override
  final ExerciseTypeConfiguration configuration;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'CompletedExercise(id: $id, creator: $creator, source: $source, name: $name, configuration: $configuration, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompletedExercise &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.configuration, configuration) ||
                const DeepCollectionEquality()
                    .equals(other.configuration, configuration)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(configuration) ^
      const DeepCollectionEquality().hash(timestamp);

  @JsonKey(ignore: true)
  @override
  _$CompletedExerciseCopyWith<_CompletedExercise> get copyWith =>
      __$CompletedExerciseCopyWithImpl<_CompletedExercise>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompletedExerciseToJson(this);
  }
}

abstract class _CompletedExercise extends CompletedExercise {
  const factory _CompletedExercise(
      {String? id,
      required String creator,
      required Exercise source,
      required String name,
      required ExerciseTypeConfiguration configuration,
      required DateTime timestamp}) = _$_CompletedExercise;
  const _CompletedExercise._() : super._();

  factory _CompletedExercise.fromJson(Map<String, dynamic> json) =
      _$_CompletedExercise.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get creator => throw _privateConstructorUsedError;
  @override
  Exercise get source => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  ExerciseTypeConfiguration get configuration =>
      throw _privateConstructorUsedError;
  @override
  DateTime get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompletedExerciseCopyWith<_CompletedExercise> get copyWith =>
      throw _privateConstructorUsedError;
}
