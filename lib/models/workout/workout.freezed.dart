// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Workout _$WorkoutFromJson(Map<String, dynamic> json) {
  return _Workout.fromJson(json);
}

/// @nodoc
class _$WorkoutTearOff {
  const _$WorkoutTearOff();

  _Workout call(
      {String? id,
      required String name,
      required String description,
      required String? creator,
      List<WorkoutTag> tags = const <WorkoutTag>[],
      List<Exercise> warmup = const [],
      required List<Exercise> exercises,
      List<Exercise> cooldown = const [],
      bool isFavourite = false}) {
    return _Workout(
      id: id,
      name: name,
      description: description,
      creator: creator,
      tags: tags,
      warmup: warmup,
      exercises: exercises,
      cooldown: cooldown,
      isFavourite: isFavourite,
    );
  }

  Workout fromJson(Map<String, Object> json) {
    return Workout.fromJson(json);
  }
}

/// @nodoc
const $Workout = _$WorkoutTearOff();

/// @nodoc
mixin _$Workout {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get creator => throw _privateConstructorUsedError;
  List<WorkoutTag> get tags => throw _privateConstructorUsedError;
  List<Exercise> get warmup => throw _privateConstructorUsedError;
  List<Exercise> get exercises => throw _privateConstructorUsedError;
  List<Exercise> get cooldown => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutCopyWith<Workout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutCopyWith<$Res> {
  factory $WorkoutCopyWith(Workout value, $Res Function(Workout) then) =
      _$WorkoutCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String name,
      String description,
      String? creator,
      List<WorkoutTag> tags,
      List<Exercise> warmup,
      List<Exercise> exercises,
      List<Exercise> cooldown,
      bool isFavourite});
}

/// @nodoc
class _$WorkoutCopyWithImpl<$Res> implements $WorkoutCopyWith<$Res> {
  _$WorkoutCopyWithImpl(this._value, this._then);

  final Workout _value;
  // ignore: unused_field
  final $Res Function(Workout) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? creator = freezed,
    Object? tags = freezed,
    Object? warmup = freezed,
    Object? exercises = freezed,
    Object? cooldown = freezed,
    Object? isFavourite = freezed,
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
              as String,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<WorkoutTag>,
      warmup: warmup == freezed
          ? _value.warmup
          : warmup // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      cooldown: cooldown == freezed
          ? _value.cooldown
          : cooldown // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$WorkoutCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory _$WorkoutCopyWith(_Workout value, $Res Function(_Workout) then) =
      __$WorkoutCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String name,
      String description,
      String? creator,
      List<WorkoutTag> tags,
      List<Exercise> warmup,
      List<Exercise> exercises,
      List<Exercise> cooldown,
      bool isFavourite});
}

/// @nodoc
class __$WorkoutCopyWithImpl<$Res> extends _$WorkoutCopyWithImpl<$Res>
    implements _$WorkoutCopyWith<$Res> {
  __$WorkoutCopyWithImpl(_Workout _value, $Res Function(_Workout) _then)
      : super(_value, (v) => _then(v as _Workout));

  @override
  _Workout get _value => super._value as _Workout;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? creator = freezed,
    Object? tags = freezed,
    Object? warmup = freezed,
    Object? exercises = freezed,
    Object? cooldown = freezed,
    Object? isFavourite = freezed,
  }) {
    return _then(_Workout(
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
              as String,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<WorkoutTag>,
      warmup: warmup == freezed
          ? _value.warmup
          : warmup // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      cooldown: cooldown == freezed
          ? _value.cooldown
          : cooldown // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Workout extends _Workout {
  const _$_Workout(
      {this.id,
      required this.name,
      required this.description,
      required this.creator,
      this.tags = const <WorkoutTag>[],
      this.warmup = const [],
      required this.exercises,
      this.cooldown = const [],
      this.isFavourite = false})
      : super._();

  factory _$_Workout.fromJson(Map<String, dynamic> json) =>
      _$$_WorkoutFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String? creator;
  @JsonKey(defaultValue: const <WorkoutTag>[])
  @override
  final List<WorkoutTag> tags;
  @JsonKey(defaultValue: const [])
  @override
  final List<Exercise> warmup;
  @override
  final List<Exercise> exercises;
  @JsonKey(defaultValue: const [])
  @override
  final List<Exercise> cooldown;
  @JsonKey(defaultValue: false)
  @override
  final bool isFavourite;

  @override
  String toString() {
    return 'Workout(id: $id, name: $name, description: $description, creator: $creator, tags: $tags, warmup: $warmup, exercises: $exercises, cooldown: $cooldown, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Workout &&
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
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.warmup, warmup) ||
                const DeepCollectionEquality().equals(other.warmup, warmup)) &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)) &&
            (identical(other.cooldown, cooldown) ||
                const DeepCollectionEquality()
                    .equals(other.cooldown, cooldown)) &&
            (identical(other.isFavourite, isFavourite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavourite, isFavourite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(warmup) ^
      const DeepCollectionEquality().hash(exercises) ^
      const DeepCollectionEquality().hash(cooldown) ^
      const DeepCollectionEquality().hash(isFavourite);

  @JsonKey(ignore: true)
  @override
  _$WorkoutCopyWith<_Workout> get copyWith =>
      __$WorkoutCopyWithImpl<_Workout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkoutToJson(this);
  }
}

abstract class _Workout extends Workout {
  const factory _Workout(
      {String? id,
      required String name,
      required String description,
      required String? creator,
      List<WorkoutTag> tags,
      List<Exercise> warmup,
      required List<Exercise> exercises,
      List<Exercise> cooldown,
      bool isFavourite}) = _$_Workout;
  const _Workout._() : super._();

  factory _Workout.fromJson(Map<String, dynamic> json) = _$_Workout.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String? get creator => throw _privateConstructorUsedError;
  @override
  List<WorkoutTag> get tags => throw _privateConstructorUsedError;
  @override
  List<Exercise> get warmup => throw _privateConstructorUsedError;
  @override
  List<Exercise> get exercises => throw _privateConstructorUsedError;
  @override
  List<Exercise> get cooldown => throw _privateConstructorUsedError;
  @override
  bool get isFavourite => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorkoutCopyWith<_Workout> get copyWith =>
      throw _privateConstructorUsedError;
}
