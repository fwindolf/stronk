// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'completed_challenge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompletedChallenge _$CompletedChallengeFromJson(Map<String, dynamic> json) {
  return _CompletedChallenge.fromJson(json);
}

/// @nodoc
class _$CompletedChallengeTearOff {
  const _$CompletedChallengeTearOff();

  _CompletedChallenge call(
      {String? id,
      required String creator,
      required Challenge challenge,
      required DateTime startTime,
      required DateTime? finishTime,
      required ExecutableExercise exercise}) {
    return _CompletedChallenge(
      id: id,
      creator: creator,
      challenge: challenge,
      startTime: startTime,
      finishTime: finishTime,
      exercise: exercise,
    );
  }

  CompletedChallenge fromJson(Map<String, Object> json) {
    return CompletedChallenge.fromJson(json);
  }
}

/// @nodoc
const $CompletedChallenge = _$CompletedChallengeTearOff();

/// @nodoc
mixin _$CompletedChallenge {
  String? get id => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  Challenge get challenge => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime? get finishTime => throw _privateConstructorUsedError;
  ExecutableExercise get exercise => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletedChallengeCopyWith<CompletedChallenge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedChallengeCopyWith<$Res> {
  factory $CompletedChallengeCopyWith(
          CompletedChallenge value, $Res Function(CompletedChallenge) then) =
      _$CompletedChallengeCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String creator,
      Challenge challenge,
      DateTime startTime,
      DateTime? finishTime,
      ExecutableExercise exercise});

  $ChallengeCopyWith<$Res> get challenge;
  $ExecutableExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class _$CompletedChallengeCopyWithImpl<$Res>
    implements $CompletedChallengeCopyWith<$Res> {
  _$CompletedChallengeCopyWithImpl(this._value, this._then);

  final CompletedChallenge _value;
  // ignore: unused_field
  final $Res Function(CompletedChallenge) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? creator = freezed,
    Object? challenge = freezed,
    Object? startTime = freezed,
    Object? finishTime = freezed,
    Object? exercise = freezed,
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
      challenge: challenge == freezed
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as Challenge,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishTime: finishTime == freezed
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exercise: exercise == freezed
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as ExecutableExercise,
    ));
  }

  @override
  $ChallengeCopyWith<$Res> get challenge {
    return $ChallengeCopyWith<$Res>(_value.challenge, (value) {
      return _then(_value.copyWith(challenge: value));
    });
  }

  @override
  $ExecutableExerciseCopyWith<$Res> get exercise {
    return $ExecutableExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }
}

/// @nodoc
abstract class _$CompletedChallengeCopyWith<$Res>
    implements $CompletedChallengeCopyWith<$Res> {
  factory _$CompletedChallengeCopyWith(
          _CompletedChallenge value, $Res Function(_CompletedChallenge) then) =
      __$CompletedChallengeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String creator,
      Challenge challenge,
      DateTime startTime,
      DateTime? finishTime,
      ExecutableExercise exercise});

  @override
  $ChallengeCopyWith<$Res> get challenge;
  @override
  $ExecutableExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$CompletedChallengeCopyWithImpl<$Res>
    extends _$CompletedChallengeCopyWithImpl<$Res>
    implements _$CompletedChallengeCopyWith<$Res> {
  __$CompletedChallengeCopyWithImpl(
      _CompletedChallenge _value, $Res Function(_CompletedChallenge) _then)
      : super(_value, (v) => _then(v as _CompletedChallenge));

  @override
  _CompletedChallenge get _value => super._value as _CompletedChallenge;

  @override
  $Res call({
    Object? id = freezed,
    Object? creator = freezed,
    Object? challenge = freezed,
    Object? startTime = freezed,
    Object? finishTime = freezed,
    Object? exercise = freezed,
  }) {
    return _then(_CompletedChallenge(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      challenge: challenge == freezed
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as Challenge,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishTime: finishTime == freezed
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exercise: exercise == freezed
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as ExecutableExercise,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompletedChallenge extends _CompletedChallenge {
  const _$_CompletedChallenge(
      {this.id,
      required this.creator,
      required this.challenge,
      required this.startTime,
      required this.finishTime,
      required this.exercise})
      : super._();

  factory _$_CompletedChallenge.fromJson(Map<String, dynamic> json) =>
      _$$_CompletedChallengeFromJson(json);

  @override
  final String? id;
  @override
  final String creator;
  @override
  final Challenge challenge;
  @override
  final DateTime startTime;
  @override
  final DateTime? finishTime;
  @override
  final ExecutableExercise exercise;

  @override
  String toString() {
    return 'CompletedChallenge(id: $id, creator: $creator, challenge: $challenge, startTime: $startTime, finishTime: $finishTime, exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompletedChallenge &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.challenge, challenge) ||
                const DeepCollectionEquality()
                    .equals(other.challenge, challenge)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.finishTime, finishTime) ||
                const DeepCollectionEquality()
                    .equals(other.finishTime, finishTime)) &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(challenge) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(finishTime) ^
      const DeepCollectionEquality().hash(exercise);

  @JsonKey(ignore: true)
  @override
  _$CompletedChallengeCopyWith<_CompletedChallenge> get copyWith =>
      __$CompletedChallengeCopyWithImpl<_CompletedChallenge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompletedChallengeToJson(this);
  }
}

abstract class _CompletedChallenge extends CompletedChallenge {
  const factory _CompletedChallenge(
      {String? id,
      required String creator,
      required Challenge challenge,
      required DateTime startTime,
      required DateTime? finishTime,
      required ExecutableExercise exercise}) = _$_CompletedChallenge;
  const _CompletedChallenge._() : super._();

  factory _CompletedChallenge.fromJson(Map<String, dynamic> json) =
      _$_CompletedChallenge.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get creator => throw _privateConstructorUsedError;
  @override
  Challenge get challenge => throw _privateConstructorUsedError;
  @override
  DateTime get startTime => throw _privateConstructorUsedError;
  @override
  DateTime? get finishTime => throw _privateConstructorUsedError;
  @override
  ExecutableExercise get exercise => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompletedChallengeCopyWith<_CompletedChallenge> get copyWith =>
      throw _privateConstructorUsedError;
}
