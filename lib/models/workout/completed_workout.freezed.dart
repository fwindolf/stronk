// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'completed_workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompletedWorkout _$CompletedWorkoutFromJson(Map<String, dynamic> json) {
  return _CompletedWorkout.fromJson(json);
}

/// @nodoc
class _$CompletedWorkoutTearOff {
  const _$CompletedWorkoutTearOff();

  _CompletedWorkout call(
      {String? id,
      required String creator,
      required Workout workout,
      required DateTime startTime,
      required DateTime? finishTime,
      required List<CompletedExercise> exercises}) {
    return _CompletedWorkout(
      id: id,
      creator: creator,
      workout: workout,
      startTime: startTime,
      finishTime: finishTime,
      exercises: exercises,
    );
  }

  CompletedWorkout fromJson(Map<String, Object> json) {
    return CompletedWorkout.fromJson(json);
  }
}

/// @nodoc
const $CompletedWorkout = _$CompletedWorkoutTearOff();

/// @nodoc
mixin _$CompletedWorkout {
  String? get id => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  Workout get workout => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime? get finishTime => throw _privateConstructorUsedError;
  List<CompletedExercise> get exercises => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletedWorkoutCopyWith<CompletedWorkout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedWorkoutCopyWith<$Res> {
  factory $CompletedWorkoutCopyWith(
          CompletedWorkout value, $Res Function(CompletedWorkout) then) =
      _$CompletedWorkoutCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String creator,
      Workout workout,
      DateTime startTime,
      DateTime? finishTime,
      List<CompletedExercise> exercises});

  $WorkoutCopyWith<$Res> get workout;
}

/// @nodoc
class _$CompletedWorkoutCopyWithImpl<$Res>
    implements $CompletedWorkoutCopyWith<$Res> {
  _$CompletedWorkoutCopyWithImpl(this._value, this._then);

  final CompletedWorkout _value;
  // ignore: unused_field
  final $Res Function(CompletedWorkout) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? creator = freezed,
    Object? workout = freezed,
    Object? startTime = freezed,
    Object? finishTime = freezed,
    Object? exercises = freezed,
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
      workout: workout == freezed
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as Workout,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishTime: finishTime == freezed
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<CompletedExercise>,
    ));
  }

  @override
  $WorkoutCopyWith<$Res> get workout {
    return $WorkoutCopyWith<$Res>(_value.workout, (value) {
      return _then(_value.copyWith(workout: value));
    });
  }
}

/// @nodoc
abstract class _$CompletedWorkoutCopyWith<$Res>
    implements $CompletedWorkoutCopyWith<$Res> {
  factory _$CompletedWorkoutCopyWith(
          _CompletedWorkout value, $Res Function(_CompletedWorkout) then) =
      __$CompletedWorkoutCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String creator,
      Workout workout,
      DateTime startTime,
      DateTime? finishTime,
      List<CompletedExercise> exercises});

  @override
  $WorkoutCopyWith<$Res> get workout;
}

/// @nodoc
class __$CompletedWorkoutCopyWithImpl<$Res>
    extends _$CompletedWorkoutCopyWithImpl<$Res>
    implements _$CompletedWorkoutCopyWith<$Res> {
  __$CompletedWorkoutCopyWithImpl(
      _CompletedWorkout _value, $Res Function(_CompletedWorkout) _then)
      : super(_value, (v) => _then(v as _CompletedWorkout));

  @override
  _CompletedWorkout get _value => super._value as _CompletedWorkout;

  @override
  $Res call({
    Object? id = freezed,
    Object? creator = freezed,
    Object? workout = freezed,
    Object? startTime = freezed,
    Object? finishTime = freezed,
    Object? exercises = freezed,
  }) {
    return _then(_CompletedWorkout(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      workout: workout == freezed
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as Workout,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishTime: finishTime == freezed
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<CompletedExercise>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompletedWorkout extends _CompletedWorkout {
  const _$_CompletedWorkout(
      {this.id,
      required this.creator,
      required this.workout,
      required this.startTime,
      required this.finishTime,
      required this.exercises})
      : super._();

  factory _$_CompletedWorkout.fromJson(Map<String, dynamic> json) =>
      _$$_CompletedWorkoutFromJson(json);

  @override
  final String? id;
  @override
  final String creator;
  @override
  final Workout workout;
  @override
  final DateTime startTime;
  @override
  final DateTime? finishTime;
  @override
  final List<CompletedExercise> exercises;

  @override
  String toString() {
    return 'CompletedWorkout(id: $id, creator: $creator, workout: $workout, startTime: $startTime, finishTime: $finishTime, exercises: $exercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompletedWorkout &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.workout, workout) ||
                const DeepCollectionEquality()
                    .equals(other.workout, workout)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.finishTime, finishTime) ||
                const DeepCollectionEquality()
                    .equals(other.finishTime, finishTime)) &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(workout) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(finishTime) ^
      const DeepCollectionEquality().hash(exercises);

  @JsonKey(ignore: true)
  @override
  _$CompletedWorkoutCopyWith<_CompletedWorkout> get copyWith =>
      __$CompletedWorkoutCopyWithImpl<_CompletedWorkout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompletedWorkoutToJson(this);
  }
}

abstract class _CompletedWorkout extends CompletedWorkout {
  const factory _CompletedWorkout(
      {String? id,
      required String creator,
      required Workout workout,
      required DateTime startTime,
      required DateTime? finishTime,
      required List<CompletedExercise> exercises}) = _$_CompletedWorkout;
  const _CompletedWorkout._() : super._();

  factory _CompletedWorkout.fromJson(Map<String, dynamic> json) =
      _$_CompletedWorkout.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get creator => throw _privateConstructorUsedError;
  @override
  Workout get workout => throw _privateConstructorUsedError;
  @override
  DateTime get startTime => throw _privateConstructorUsedError;
  @override
  DateTime? get finishTime => throw _privateConstructorUsedError;
  @override
  List<CompletedExercise> get exercises => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompletedWorkoutCopyWith<_CompletedWorkout> get copyWith =>
      throw _privateConstructorUsedError;
}
