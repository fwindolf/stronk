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

ExerciseConfiguration _$ExerciseConfigurationFromJson(
    Map<String, dynamic> json) {
  return _ExerciseConfiguration.fromJson(json);
}

/// @nodoc
class _$ExerciseConfigurationTearOff {
  const _$ExerciseConfigurationTearOff();

  _ExerciseConfiguration call(
      {required ExerciseType type, required List<ExerciseSet> sets}) {
    return _ExerciseConfiguration(
      type: type,
      sets: sets,
    );
  }

  ExerciseConfiguration fromJson(Map<String, Object> json) {
    return ExerciseConfiguration.fromJson(json);
  }
}

/// @nodoc
const $ExerciseConfiguration = _$ExerciseConfigurationTearOff();

/// @nodoc
mixin _$ExerciseConfiguration {
  ExerciseType get type => throw _privateConstructorUsedError;
  List<ExerciseSet> get sets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseConfigurationCopyWith<ExerciseConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseConfigurationCopyWith<$Res> {
  factory $ExerciseConfigurationCopyWith(ExerciseConfiguration value,
          $Res Function(ExerciseConfiguration) then) =
      _$ExerciseConfigurationCopyWithImpl<$Res>;
  $Res call({ExerciseType type, List<ExerciseSet> sets});
}

/// @nodoc
class _$ExerciseConfigurationCopyWithImpl<$Res>
    implements $ExerciseConfigurationCopyWith<$Res> {
  _$ExerciseConfigurationCopyWithImpl(this._value, this._then);

  final ExerciseConfiguration _value;
  // ignore: unused_field
  final $Res Function(ExerciseConfiguration) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? sets = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSet>,
    ));
  }
}

/// @nodoc
abstract class _$ExerciseConfigurationCopyWith<$Res>
    implements $ExerciseConfigurationCopyWith<$Res> {
  factory _$ExerciseConfigurationCopyWith(_ExerciseConfiguration value,
          $Res Function(_ExerciseConfiguration) then) =
      __$ExerciseConfigurationCopyWithImpl<$Res>;
  @override
  $Res call({ExerciseType type, List<ExerciseSet> sets});
}

/// @nodoc
class __$ExerciseConfigurationCopyWithImpl<$Res>
    extends _$ExerciseConfigurationCopyWithImpl<$Res>
    implements _$ExerciseConfigurationCopyWith<$Res> {
  __$ExerciseConfigurationCopyWithImpl(_ExerciseConfiguration _value,
      $Res Function(_ExerciseConfiguration) _then)
      : super(_value, (v) => _then(v as _ExerciseConfiguration));

  @override
  _ExerciseConfiguration get _value => super._value as _ExerciseConfiguration;

  @override
  $Res call({
    Object? type = freezed,
    Object? sets = freezed,
  }) {
    return _then(_ExerciseConfiguration(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSet>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExerciseConfiguration extends _ExerciseConfiguration {
  const _$_ExerciseConfiguration({required this.type, required this.sets})
      : super._();

  factory _$_ExerciseConfiguration.fromJson(Map<String, dynamic> json) =>
      _$$_ExerciseConfigurationFromJson(json);

  @override
  final ExerciseType type;
  @override
  final List<ExerciseSet> sets;

  @override
  String toString() {
    return 'ExerciseConfiguration(type: $type, sets: $sets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseConfiguration &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.sets, sets) ||
                const DeepCollectionEquality().equals(other.sets, sets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(sets);

  @JsonKey(ignore: true)
  @override
  _$ExerciseConfigurationCopyWith<_ExerciseConfiguration> get copyWith =>
      __$ExerciseConfigurationCopyWithImpl<_ExerciseConfiguration>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExerciseConfigurationToJson(this);
  }
}

abstract class _ExerciseConfiguration extends ExerciseConfiguration {
  const factory _ExerciseConfiguration(
      {required ExerciseType type,
      required List<ExerciseSet> sets}) = _$_ExerciseConfiguration;
  const _ExerciseConfiguration._() : super._();

  factory _ExerciseConfiguration.fromJson(Map<String, dynamic> json) =
      _$_ExerciseConfiguration.fromJson;

  @override
  ExerciseType get type => throw _privateConstructorUsedError;
  @override
  List<ExerciseSet> get sets => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExerciseConfigurationCopyWith<_ExerciseConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  return _Exercise.fromJson(json);
}

/// @nodoc
class _$ExerciseTearOff {
  const _$ExerciseTearOff();

  _Exercise call(
      {required String id,
      required String name,
      required String description,
      required String? creator,
      required ExerciseConfiguration configuration,
      required Equipment equipment,
      BandMode? bandMode,
      required SideMode sideMode,
      List<ExerciseTag> tags = const [],
      List<Muscle> muscles = const [],
      required List<Instruction> instructions,
      bool isFavourite = false}) {
    return _Exercise(
      id: id,
      name: name,
      description: description,
      creator: creator,
      configuration: configuration,
      equipment: equipment,
      bandMode: bandMode,
      sideMode: sideMode,
      tags: tags,
      muscles: muscles,
      instructions: instructions,
      isFavourite: isFavourite,
    );
  }

  Exercise fromJson(Map<String, Object> json) {
    return Exercise.fromJson(json);
  }
}

/// @nodoc
const $Exercise = _$ExerciseTearOff();

/// @nodoc
mixin _$Exercise {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get creator => throw _privateConstructorUsedError;
  ExerciseConfiguration get configuration => throw _privateConstructorUsedError;
  Equipment get equipment => throw _privateConstructorUsedError;
  BandMode? get bandMode => throw _privateConstructorUsedError;
  SideMode get sideMode => throw _privateConstructorUsedError;
  List<ExerciseTag> get tags => throw _privateConstructorUsedError;
  List<Muscle> get muscles => throw _privateConstructorUsedError;
  List<Instruction> get instructions => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String description,
      String? creator,
      ExerciseConfiguration configuration,
      Equipment equipment,
      BandMode? bandMode,
      SideMode sideMode,
      List<ExerciseTag> tags,
      List<Muscle> muscles,
      List<Instruction> instructions,
      bool isFavourite});

  $ExerciseConfigurationCopyWith<$Res> get configuration;
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res> implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  final Exercise _value;
  // ignore: unused_field
  final $Res Function(Exercise) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? creator = freezed,
    Object? configuration = freezed,
    Object? equipment = freezed,
    Object? bandMode = freezed,
    Object? sideMode = freezed,
    Object? tags = freezed,
    Object? muscles = freezed,
    Object? instructions = freezed,
    Object? isFavourite = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      configuration: configuration == freezed
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as ExerciseConfiguration,
      equipment: equipment == freezed
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as Equipment,
      bandMode: bandMode == freezed
          ? _value.bandMode
          : bandMode // ignore: cast_nullable_to_non_nullable
              as BandMode?,
      sideMode: sideMode == freezed
          ? _value.sideMode
          : sideMode // ignore: cast_nullable_to_non_nullable
              as SideMode,
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

  @override
  $ExerciseConfigurationCopyWith<$Res> get configuration {
    return $ExerciseConfigurationCopyWith<$Res>(_value.configuration, (value) {
      return _then(_value.copyWith(configuration: value));
    });
  }
}

/// @nodoc
abstract class _$ExerciseCopyWith<$Res> implements $ExerciseCopyWith<$Res> {
  factory _$ExerciseCopyWith(_Exercise value, $Res Function(_Exercise) then) =
      __$ExerciseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String description,
      String? creator,
      ExerciseConfiguration configuration,
      Equipment equipment,
      BandMode? bandMode,
      SideMode sideMode,
      List<ExerciseTag> tags,
      List<Muscle> muscles,
      List<Instruction> instructions,
      bool isFavourite});

  @override
  $ExerciseConfigurationCopyWith<$Res> get configuration;
}

/// @nodoc
class __$ExerciseCopyWithImpl<$Res> extends _$ExerciseCopyWithImpl<$Res>
    implements _$ExerciseCopyWith<$Res> {
  __$ExerciseCopyWithImpl(_Exercise _value, $Res Function(_Exercise) _then)
      : super(_value, (v) => _then(v as _Exercise));

  @override
  _Exercise get _value => super._value as _Exercise;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? creator = freezed,
    Object? configuration = freezed,
    Object? equipment = freezed,
    Object? bandMode = freezed,
    Object? sideMode = freezed,
    Object? tags = freezed,
    Object? muscles = freezed,
    Object? instructions = freezed,
    Object? isFavourite = freezed,
  }) {
    return _then(_Exercise(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      configuration: configuration == freezed
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as ExerciseConfiguration,
      equipment: equipment == freezed
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as Equipment,
      bandMode: bandMode == freezed
          ? _value.bandMode
          : bandMode // ignore: cast_nullable_to_non_nullable
              as BandMode?,
      sideMode: sideMode == freezed
          ? _value.sideMode
          : sideMode // ignore: cast_nullable_to_non_nullable
              as SideMode,
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
class _$_Exercise extends _Exercise {
  const _$_Exercise(
      {required this.id,
      required this.name,
      required this.description,
      required this.creator,
      required this.configuration,
      required this.equipment,
      this.bandMode,
      required this.sideMode,
      this.tags = const [],
      this.muscles = const [],
      required this.instructions,
      this.isFavourite = false})
      : super._();

  factory _$_Exercise.fromJson(Map<String, dynamic> json) =>
      _$$_ExerciseFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String? creator;
  @override
  final ExerciseConfiguration configuration;
  @override
  final Equipment equipment;
  @override
  final BandMode? bandMode;
  @override
  final SideMode sideMode;
  @JsonKey(defaultValue: const [])
  @override
  final List<ExerciseTag> tags;
  @JsonKey(defaultValue: const [])
  @override
  final List<Muscle> muscles;
  @override
  final List<Instruction> instructions;
  @JsonKey(defaultValue: false)
  @override
  final bool isFavourite;

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, description: $description, creator: $creator, configuration: $configuration, equipment: $equipment, bandMode: $bandMode, sideMode: $sideMode, tags: $tags, muscles: $muscles, instructions: $instructions, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Exercise &&
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
            (identical(other.configuration, configuration) ||
                const DeepCollectionEquality()
                    .equals(other.configuration, configuration)) &&
            (identical(other.equipment, equipment) ||
                const DeepCollectionEquality()
                    .equals(other.equipment, equipment)) &&
            (identical(other.bandMode, bandMode) ||
                const DeepCollectionEquality()
                    .equals(other.bandMode, bandMode)) &&
            (identical(other.sideMode, sideMode) ||
                const DeepCollectionEquality()
                    .equals(other.sideMode, sideMode)) &&
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
      const DeepCollectionEquality().hash(configuration) ^
      const DeepCollectionEquality().hash(equipment) ^
      const DeepCollectionEquality().hash(bandMode) ^
      const DeepCollectionEquality().hash(sideMode) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(muscles) ^
      const DeepCollectionEquality().hash(instructions) ^
      const DeepCollectionEquality().hash(isFavourite);

  @JsonKey(ignore: true)
  @override
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      __$ExerciseCopyWithImpl<_Exercise>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExerciseToJson(this);
  }
}

abstract class _Exercise extends Exercise {
  const factory _Exercise(
      {required String id,
      required String name,
      required String description,
      required String? creator,
      required ExerciseConfiguration configuration,
      required Equipment equipment,
      BandMode? bandMode,
      required SideMode sideMode,
      List<ExerciseTag> tags,
      List<Muscle> muscles,
      required List<Instruction> instructions,
      bool isFavourite}) = _$_Exercise;
  const _Exercise._() : super._();

  factory _Exercise.fromJson(Map<String, dynamic> json) = _$_Exercise.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String? get creator => throw _privateConstructorUsedError;
  @override
  ExerciseConfiguration get configuration => throw _privateConstructorUsedError;
  @override
  Equipment get equipment => throw _privateConstructorUsedError;
  @override
  BandMode? get bandMode => throw _privateConstructorUsedError;
  @override
  SideMode get sideMode => throw _privateConstructorUsedError;
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
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}
