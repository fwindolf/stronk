// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'challenge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Challenge _$ChallengeFromJson(Map<String, dynamic> json) {
  return _Challenge.fromJson(json);
}

/// @nodoc
class _$ChallengeTearOff {
  const _$ChallengeTearOff();

  _Challenge call(
      {String? id,
      required String name,
      required String? description,
      required String? creator,
      required ExecutableExercise exercise,
      required DateTime startDate,
      required DateTime? endDate}) {
    return _Challenge(
      id: id,
      name: name,
      description: description,
      creator: creator,
      exercise: exercise,
      startDate: startDate,
      endDate: endDate,
    );
  }

  Challenge fromJson(Map<String, Object> json) {
    return Challenge.fromJson(json);
  }
}

/// @nodoc
const $Challenge = _$ChallengeTearOff();

/// @nodoc
mixin _$Challenge {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get creator => throw _privateConstructorUsedError;
  ExecutableExercise get exercise => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChallengeCopyWith<Challenge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeCopyWith<$Res> {
  factory $ChallengeCopyWith(Challenge value, $Res Function(Challenge) then) =
      _$ChallengeCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String name,
      String? description,
      String? creator,
      ExecutableExercise exercise,
      DateTime startDate,
      DateTime? endDate});

  $ExecutableExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class _$ChallengeCopyWithImpl<$Res> implements $ChallengeCopyWith<$Res> {
  _$ChallengeCopyWithImpl(this._value, this._then);

  final Challenge _value;
  // ignore: unused_field
  final $Res Function(Challenge) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? creator = freezed,
    Object? exercise = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String?,
      exercise: exercise == freezed
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as ExecutableExercise,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $ExecutableExerciseCopyWith<$Res> get exercise {
    return $ExecutableExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }
}

/// @nodoc
abstract class _$ChallengeCopyWith<$Res> implements $ChallengeCopyWith<$Res> {
  factory _$ChallengeCopyWith(
          _Challenge value, $Res Function(_Challenge) then) =
      __$ChallengeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String name,
      String? description,
      String? creator,
      ExecutableExercise exercise,
      DateTime startDate,
      DateTime? endDate});

  @override
  $ExecutableExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$ChallengeCopyWithImpl<$Res> extends _$ChallengeCopyWithImpl<$Res>
    implements _$ChallengeCopyWith<$Res> {
  __$ChallengeCopyWithImpl(_Challenge _value, $Res Function(_Challenge) _then)
      : super(_value, (v) => _then(v as _Challenge));

  @override
  _Challenge get _value => super._value as _Challenge;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? creator = freezed,
    Object? exercise = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_Challenge(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String?,
      exercise: exercise == freezed
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as ExecutableExercise,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Challenge extends _Challenge with DiagnosticableTreeMixin {
  const _$_Challenge(
      {this.id,
      required this.name,
      required this.description,
      required this.creator,
      required this.exercise,
      required this.startDate,
      required this.endDate})
      : super._();

  factory _$_Challenge.fromJson(Map<String, dynamic> json) =>
      _$$_ChallengeFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? creator;
  @override
  final ExecutableExercise exercise;
  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Challenge(id: $id, name: $name, description: $description, creator: $creator, exercise: $exercise, startDate: $startDate, endDate: $endDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Challenge'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('creator', creator))
      ..add(DiagnosticsProperty('exercise', exercise))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Challenge &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(other.endDate, endDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(exercise) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate);

  @JsonKey(ignore: true)
  @override
  _$ChallengeCopyWith<_Challenge> get copyWith =>
      __$ChallengeCopyWithImpl<_Challenge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChallengeToJson(this);
  }
}

abstract class _Challenge extends Challenge {
  const factory _Challenge(
      {String? id,
      required String name,
      required String? description,
      required String? creator,
      required ExecutableExercise exercise,
      required DateTime startDate,
      required DateTime? endDate}) = _$_Challenge;
  const _Challenge._() : super._();

  factory _Challenge.fromJson(Map<String, dynamic> json) =
      _$_Challenge.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get creator => throw _privateConstructorUsedError;
  @override
  ExecutableExercise get exercise => throw _privateConstructorUsedError;
  @override
  DateTime get startDate => throw _privateConstructorUsedError;
  @override
  DateTime? get endDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChallengeCopyWith<_Challenge> get copyWith =>
      throw _privateConstructorUsedError;
}
