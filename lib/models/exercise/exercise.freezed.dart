// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseExercise _$BaseExerciseFromJson(Map<String, dynamic> json) {
  return _BaseExercise.fromJson(json);
}

/// @nodoc
class _$BaseExerciseTearOff {
  const _$BaseExerciseTearOff();

  _BaseExercise call(
      {String? id,
      required String name,
      required String description,
      required String? creator,
      List<ExerciseTag> tags = const [],
      List<Muscle> muscles = const [],
      List<Instruction> instructions = const [],
      bool isFavourite = false}) {
    return _BaseExercise(
      id: id,
      name: name,
      description: description,
      creator: creator,
      tags: tags,
      muscles: muscles,
      instructions: instructions,
      isFavourite: isFavourite,
    );
  }

  BaseExercise fromJson(Map<String, Object> json) {
    return BaseExercise.fromJson(json);
  }
}

/// @nodoc
const $BaseExercise = _$BaseExerciseTearOff();

/// @nodoc
mixin _$BaseExercise {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get creator => throw _privateConstructorUsedError;
  List<ExerciseTag> get tags => throw _privateConstructorUsedError;
  List<Muscle> get muscles => throw _privateConstructorUsedError;
  List<Instruction> get instructions => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseExerciseCopyWith<BaseExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseExerciseCopyWith<$Res> {
  factory $BaseExerciseCopyWith(
          BaseExercise value, $Res Function(BaseExercise) then) =
      _$BaseExerciseCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String name,
      String description,
      String? creator,
      List<ExerciseTag> tags,
      List<Muscle> muscles,
      List<Instruction> instructions,
      bool isFavourite});
}

/// @nodoc
class _$BaseExerciseCopyWithImpl<$Res> implements $BaseExerciseCopyWith<$Res> {
  _$BaseExerciseCopyWithImpl(this._value, this._then);

  final BaseExercise _value;
  // ignore: unused_field
  final $Res Function(BaseExercise) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? creator = freezed,
    Object? tags = freezed,
    Object? muscles = freezed,
    Object? instructions = freezed,
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
              as List<ExerciseTag>,
      muscles: muscles == freezed
          ? _value.muscles
          : muscles // ignore: cast_nullable_to_non_nullable
              as List<Muscle>,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<Instruction>,
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$BaseExerciseCopyWith<$Res>
    implements $BaseExerciseCopyWith<$Res> {
  factory _$BaseExerciseCopyWith(
          _BaseExercise value, $Res Function(_BaseExercise) then) =
      __$BaseExerciseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String name,
      String description,
      String? creator,
      List<ExerciseTag> tags,
      List<Muscle> muscles,
      List<Instruction> instructions,
      bool isFavourite});
}

/// @nodoc
class __$BaseExerciseCopyWithImpl<$Res> extends _$BaseExerciseCopyWithImpl<$Res>
    implements _$BaseExerciseCopyWith<$Res> {
  __$BaseExerciseCopyWithImpl(
      _BaseExercise _value, $Res Function(_BaseExercise) _then)
      : super(_value, (v) => _then(v as _BaseExercise));

  @override
  _BaseExercise get _value => super._value as _BaseExercise;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? creator = freezed,
    Object? tags = freezed,
    Object? muscles = freezed,
    Object? instructions = freezed,
    Object? isFavourite = freezed,
  }) {
    return _then(_BaseExercise(
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
              as List<ExerciseTag>,
      muscles: muscles == freezed
          ? _value.muscles
          : muscles // ignore: cast_nullable_to_non_nullable
              as List<Muscle>,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<Instruction>,
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(Exercise)
class _$_BaseExercise extends _BaseExercise {
  const _$_BaseExercise(
      {this.id,
      required this.name,
      required this.description,
      required this.creator,
      this.tags = const [],
      this.muscles = const [],
      this.instructions = const [],
      this.isFavourite = false})
      : super._();

  factory _$_BaseExercise.fromJson(Map<String, dynamic> json) =>
      _$$_BaseExerciseFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String? creator;
  @JsonKey(defaultValue: const [])
  @override
  final List<ExerciseTag> tags;
  @JsonKey(defaultValue: const [])
  @override
  final List<Muscle> muscles;
  @JsonKey(defaultValue: const [])
  @override
  final List<Instruction> instructions;
  @JsonKey(defaultValue: false)
  @override
  final bool isFavourite;

  @override
  String toString() {
    return 'BaseExercise(id: $id, name: $name, description: $description, creator: $creator, tags: $tags, muscles: $muscles, instructions: $instructions, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BaseExercise &&
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
            (identical(other.muscles, muscles) ||
                const DeepCollectionEquality()
                    .equals(other.muscles, muscles)) &&
            (identical(other.instructions, instructions) ||
                const DeepCollectionEquality()
                    .equals(other.instructions, instructions)) &&
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
      const DeepCollectionEquality().hash(muscles) ^
      const DeepCollectionEquality().hash(instructions) ^
      const DeepCollectionEquality().hash(isFavourite);

  @JsonKey(ignore: true)
  @override
  _$BaseExerciseCopyWith<_BaseExercise> get copyWith =>
      __$BaseExerciseCopyWithImpl<_BaseExercise>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseExerciseToJson(this);
  }
}

abstract class _BaseExercise extends BaseExercise implements Exercise {
  const factory _BaseExercise(
      {String? id,
      required String name,
      required String description,
      required String? creator,
      List<ExerciseTag> tags,
      List<Muscle> muscles,
      List<Instruction> instructions,
      bool isFavourite}) = _$_BaseExercise;
  const _BaseExercise._() : super._();

  factory _BaseExercise.fromJson(Map<String, dynamic> json) =
      _$_BaseExercise.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String? get creator => throw _privateConstructorUsedError;
  @override
  List<ExerciseTag> get tags => throw _privateConstructorUsedError;
  @override
  List<Muscle> get muscles => throw _privateConstructorUsedError;
  @override
  List<Instruction> get instructions => throw _privateConstructorUsedError;
  @override
  bool get isFavourite => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BaseExerciseCopyWith<_BaseExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

ExecutableExercise _$ExecutableExerciseFromJson(Map<String, dynamic> json) {
  return _ExecutableExercise.fromJson(json);
}

/// @nodoc
class _$ExecutableExerciseTearOff {
  const _$ExecutableExerciseTearOff();

  _ExecutableExercise call(
      {String? id,
      required Exercise exercise,
      required String creator,
      required Execution execution,
      Equipment? equipment}) {
    return _ExecutableExercise(
      id: id,
      exercise: exercise,
      creator: creator,
      execution: execution,
      equipment: equipment,
    );
  }

  ExecutableExercise fromJson(Map<String, Object> json) {
    return ExecutableExercise.fromJson(json);
  }
}

/// @nodoc
const $ExecutableExercise = _$ExecutableExerciseTearOff();

/// @nodoc
mixin _$ExecutableExercise {
  String? get id => throw _privateConstructorUsedError;
  Exercise get exercise => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  Execution get execution => throw _privateConstructorUsedError;
  Equipment? get equipment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExecutableExerciseCopyWith<ExecutableExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExecutableExerciseCopyWith<$Res> {
  factory $ExecutableExerciseCopyWith(
          ExecutableExercise value, $Res Function(ExecutableExercise) then) =
      _$ExecutableExerciseCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      Exercise exercise,
      String creator,
      Execution execution,
      Equipment? equipment});
}

/// @nodoc
class _$ExecutableExerciseCopyWithImpl<$Res>
    implements $ExecutableExerciseCopyWith<$Res> {
  _$ExecutableExerciseCopyWithImpl(this._value, this._then);

  final ExecutableExercise _value;
  // ignore: unused_field
  final $Res Function(ExecutableExercise) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? exercise = freezed,
    Object? creator = freezed,
    Object? execution = freezed,
    Object? equipment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      exercise: exercise == freezed
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      execution: execution == freezed
          ? _value.execution
          : execution // ignore: cast_nullable_to_non_nullable
              as Execution,
      equipment: equipment == freezed
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as Equipment?,
    ));
  }
}

/// @nodoc
abstract class _$ExecutableExerciseCopyWith<$Res>
    implements $ExecutableExerciseCopyWith<$Res> {
  factory _$ExecutableExerciseCopyWith(
          _ExecutableExercise value, $Res Function(_ExecutableExercise) then) =
      __$ExecutableExerciseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      Exercise exercise,
      String creator,
      Execution execution,
      Equipment? equipment});
}

/// @nodoc
class __$ExecutableExerciseCopyWithImpl<$Res>
    extends _$ExecutableExerciseCopyWithImpl<$Res>
    implements _$ExecutableExerciseCopyWith<$Res> {
  __$ExecutableExerciseCopyWithImpl(
      _ExecutableExercise _value, $Res Function(_ExecutableExercise) _then)
      : super(_value, (v) => _then(v as _ExecutableExercise));

  @override
  _ExecutableExercise get _value => super._value as _ExecutableExercise;

  @override
  $Res call({
    Object? id = freezed,
    Object? exercise = freezed,
    Object? creator = freezed,
    Object? execution = freezed,
    Object? equipment = freezed,
  }) {
    return _then(_ExecutableExercise(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      exercise: exercise == freezed
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      execution: execution == freezed
          ? _value.execution
          : execution // ignore: cast_nullable_to_non_nullable
              as Execution,
      equipment: equipment == freezed
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as Equipment?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(Exercise)
class _$_ExecutableExercise extends _ExecutableExercise {
  const _$_ExecutableExercise(
      {this.id,
      required this.exercise,
      required this.creator,
      required this.execution,
      this.equipment})
      : super._();

  factory _$_ExecutableExercise.fromJson(Map<String, dynamic> json) =>
      _$$_ExecutableExerciseFromJson(json);

  @override
  final String? id;
  @override
  final Exercise exercise;
  @override
  final String creator;
  @override
  final Execution execution;
  @override
  final Equipment? equipment;

  @override
  String toString() {
    return 'ExecutableExercise(id: $id, exercise: $exercise, creator: $creator, execution: $execution, equipment: $equipment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExecutableExercise &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.execution, execution) ||
                const DeepCollectionEquality()
                    .equals(other.execution, execution)) &&
            (identical(other.equipment, equipment) ||
                const DeepCollectionEquality()
                    .equals(other.equipment, equipment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(exercise) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(execution) ^
      const DeepCollectionEquality().hash(equipment);

  @JsonKey(ignore: true)
  @override
  _$ExecutableExerciseCopyWith<_ExecutableExercise> get copyWith =>
      __$ExecutableExerciseCopyWithImpl<_ExecutableExercise>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExecutableExerciseToJson(this);
  }
}

abstract class _ExecutableExercise extends ExecutableExercise
    implements Exercise {
  const factory _ExecutableExercise(
      {String? id,
      required Exercise exercise,
      required String creator,
      required Execution execution,
      Equipment? equipment}) = _$_ExecutableExercise;
  const _ExecutableExercise._() : super._();

  factory _ExecutableExercise.fromJson(Map<String, dynamic> json) =
      _$_ExecutableExercise.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  Exercise get exercise => throw _privateConstructorUsedError;
  @override
  String get creator => throw _privateConstructorUsedError;
  @override
  Execution get execution => throw _privateConstructorUsedError;
  @override
  Equipment? get equipment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExecutableExerciseCopyWith<_ExecutableExercise> get copyWith =>
      throw _privateConstructorUsedError;
}
