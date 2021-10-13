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
      required String exerciseId,
      required String exerciseName,
      required String creator,
      required ExerciseType type,
      required List<ExerciseSet> sets,
      required DateTime timeStart,
      required DateTime? timeFinish}) {
    return _CompletedExercise(
      id: id,
      exerciseId: exerciseId,
      exerciseName: exerciseName,
      creator: creator,
      type: type,
      sets: sets,
      timeStart: timeStart,
      timeFinish: timeFinish,
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
  String get exerciseId => throw _privateConstructorUsedError;
  String get exerciseName => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  ExerciseType get type => throw _privateConstructorUsedError;
  List<ExerciseSet> get sets => throw _privateConstructorUsedError;
  DateTime get timeStart => throw _privateConstructorUsedError;
  DateTime? get timeFinish => throw _privateConstructorUsedError;

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
      String exerciseId,
      String exerciseName,
      String creator,
      ExerciseType type,
      List<ExerciseSet> sets,
      DateTime timeStart,
      DateTime? timeFinish});
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
    Object? exerciseId = freezed,
    Object? exerciseName = freezed,
    Object? creator = freezed,
    Object? type = freezed,
    Object? sets = freezed,
    Object? timeStart = freezed,
    Object? timeFinish = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      exerciseId: exerciseId == freezed
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseName: exerciseName == freezed
          ? _value.exerciseName
          : exerciseName // ignore: cast_nullable_to_non_nullable
              as String,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSet>,
      timeStart: timeStart == freezed
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeFinish: timeFinish == freezed
          ? _value.timeFinish
          : timeFinish // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
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
      String exerciseId,
      String exerciseName,
      String creator,
      ExerciseType type,
      List<ExerciseSet> sets,
      DateTime timeStart,
      DateTime? timeFinish});
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
    Object? exerciseId = freezed,
    Object? exerciseName = freezed,
    Object? creator = freezed,
    Object? type = freezed,
    Object? sets = freezed,
    Object? timeStart = freezed,
    Object? timeFinish = freezed,
  }) {
    return _then(_CompletedExercise(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      exerciseId: exerciseId == freezed
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseName: exerciseName == freezed
          ? _value.exerciseName
          : exerciseName // ignore: cast_nullable_to_non_nullable
              as String,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSet>,
      timeStart: timeStart == freezed
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeFinish: timeFinish == freezed
          ? _value.timeFinish
          : timeFinish // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompletedExercise extends _CompletedExercise {
  const _$_CompletedExercise(
      {this.id,
      required this.exerciseId,
      required this.exerciseName,
      required this.creator,
      required this.type,
      required this.sets,
      required this.timeStart,
      required this.timeFinish})
      : super._();

  factory _$_CompletedExercise.fromJson(Map<String, dynamic> json) =>
      _$$_CompletedExerciseFromJson(json);

  @override
  final String? id;
  @override
  final String exerciseId;
  @override
  final String exerciseName;
  @override
  final String creator;
  @override
  final ExerciseType type;
  @override
  final List<ExerciseSet> sets;
  @override
  final DateTime timeStart;
  @override
  final DateTime? timeFinish;

  @override
  String toString() {
    return 'CompletedExercise(id: $id, exerciseId: $exerciseId, exerciseName: $exerciseName, creator: $creator, type: $type, sets: $sets, timeStart: $timeStart, timeFinish: $timeFinish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompletedExercise &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)) &&
            (identical(other.exerciseName, exerciseName) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseName, exerciseName)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.sets, sets) ||
                const DeepCollectionEquality().equals(other.sets, sets)) &&
            (identical(other.timeStart, timeStart) ||
                const DeepCollectionEquality()
                    .equals(other.timeStart, timeStart)) &&
            (identical(other.timeFinish, timeFinish) ||
                const DeepCollectionEquality()
                    .equals(other.timeFinish, timeFinish)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(exerciseName) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(sets) ^
      const DeepCollectionEquality().hash(timeStart) ^
      const DeepCollectionEquality().hash(timeFinish);

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
      required String exerciseId,
      required String exerciseName,
      required String creator,
      required ExerciseType type,
      required List<ExerciseSet> sets,
      required DateTime timeStart,
      required DateTime? timeFinish}) = _$_CompletedExercise;
  const _CompletedExercise._() : super._();

  factory _CompletedExercise.fromJson(Map<String, dynamic> json) =
      _$_CompletedExercise.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get exerciseId => throw _privateConstructorUsedError;
  @override
  String get exerciseName => throw _privateConstructorUsedError;
  @override
  String get creator => throw _privateConstructorUsedError;
  @override
  ExerciseType get type => throw _privateConstructorUsedError;
  @override
  List<ExerciseSet> get sets => throw _privateConstructorUsedError;
  @override
  DateTime get timeStart => throw _privateConstructorUsedError;
  @override
  DateTime? get timeFinish => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompletedExerciseCopyWith<_CompletedExercise> get copyWith =>
      throw _privateConstructorUsedError;
}
