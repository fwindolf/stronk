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
      required String exerciseId,
      required String name,
      String? description,
      String? creator,
      required ExerciseConfiguration configuration,
      required Equipment equipment,
      required SideMode sideMode,
      required DateTime startDate,
      required List<Instruction> instructions,
      DateTime? endDate}) {
    return _Challenge(
      id: id,
      exerciseId: exerciseId,
      name: name,
      description: description,
      creator: creator,
      configuration: configuration,
      equipment: equipment,
      sideMode: sideMode,
      startDate: startDate,
      instructions: instructions,
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
  String get exerciseId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get creator => throw _privateConstructorUsedError;
  ExerciseConfiguration get configuration => throw _privateConstructorUsedError;
  Equipment get equipment => throw _privateConstructorUsedError;
  SideMode get sideMode => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  List<Instruction> get instructions => throw _privateConstructorUsedError;
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
      String exerciseId,
      String name,
      String? description,
      String? creator,
      ExerciseConfiguration configuration,
      Equipment equipment,
      SideMode sideMode,
      DateTime startDate,
      List<Instruction> instructions,
      DateTime? endDate});

  $ExerciseConfigurationCopyWith<$Res> get configuration;
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
    Object? exerciseId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? creator = freezed,
    Object? configuration = freezed,
    Object? equipment = freezed,
    Object? sideMode = freezed,
    Object? startDate = freezed,
    Object? instructions = freezed,
    Object? endDate = freezed,
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
      configuration: configuration == freezed
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as ExerciseConfiguration,
      equipment: equipment == freezed
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as Equipment,
      sideMode: sideMode == freezed
          ? _value.sideMode
          : sideMode // ignore: cast_nullable_to_non_nullable
              as SideMode,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<Instruction>,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$ChallengeCopyWith<$Res> implements $ChallengeCopyWith<$Res> {
  factory _$ChallengeCopyWith(
          _Challenge value, $Res Function(_Challenge) then) =
      __$ChallengeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String exerciseId,
      String name,
      String? description,
      String? creator,
      ExerciseConfiguration configuration,
      Equipment equipment,
      SideMode sideMode,
      DateTime startDate,
      List<Instruction> instructions,
      DateTime? endDate});

  @override
  $ExerciseConfigurationCopyWith<$Res> get configuration;
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
    Object? exerciseId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? creator = freezed,
    Object? configuration = freezed,
    Object? equipment = freezed,
    Object? sideMode = freezed,
    Object? startDate = freezed,
    Object? instructions = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_Challenge(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      exerciseId: exerciseId == freezed
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
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
      configuration: configuration == freezed
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as ExerciseConfiguration,
      equipment: equipment == freezed
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as Equipment,
      sideMode: sideMode == freezed
          ? _value.sideMode
          : sideMode // ignore: cast_nullable_to_non_nullable
              as SideMode,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<Instruction>,
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
      required this.exerciseId,
      required this.name,
      this.description,
      this.creator,
      required this.configuration,
      required this.equipment,
      required this.sideMode,
      required this.startDate,
      required this.instructions,
      this.endDate})
      : super._();

  factory _$_Challenge.fromJson(Map<String, dynamic> json) =>
      _$$_ChallengeFromJson(json);

  @override
  final String? id;
  @override
  final String exerciseId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? creator;
  @override
  final ExerciseConfiguration configuration;
  @override
  final Equipment equipment;
  @override
  final SideMode sideMode;
  @override
  final DateTime startDate;
  @override
  final List<Instruction> instructions;
  @override
  final DateTime? endDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Challenge(id: $id, exerciseId: $exerciseId, name: $name, description: $description, creator: $creator, configuration: $configuration, equipment: $equipment, sideMode: $sideMode, startDate: $startDate, instructions: $instructions, endDate: $endDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Challenge'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('exerciseId', exerciseId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('creator', creator))
      ..add(DiagnosticsProperty('configuration', configuration))
      ..add(DiagnosticsProperty('equipment', equipment))
      ..add(DiagnosticsProperty('sideMode', sideMode))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('instructions', instructions))
      ..add(DiagnosticsProperty('endDate', endDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Challenge &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)) &&
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
            (identical(other.sideMode, sideMode) ||
                const DeepCollectionEquality()
                    .equals(other.sideMode, sideMode)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.instructions, instructions) ||
                const DeepCollectionEquality()
                    .equals(other.instructions, instructions)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(other.endDate, endDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(configuration) ^
      const DeepCollectionEquality().hash(equipment) ^
      const DeepCollectionEquality().hash(sideMode) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(instructions) ^
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
      required String exerciseId,
      required String name,
      String? description,
      String? creator,
      required ExerciseConfiguration configuration,
      required Equipment equipment,
      required SideMode sideMode,
      required DateTime startDate,
      required List<Instruction> instructions,
      DateTime? endDate}) = _$_Challenge;
  const _Challenge._() : super._();

  factory _Challenge.fromJson(Map<String, dynamic> json) =
      _$_Challenge.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get exerciseId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get creator => throw _privateConstructorUsedError;
  @override
  ExerciseConfiguration get configuration => throw _privateConstructorUsedError;
  @override
  Equipment get equipment => throw _privateConstructorUsedError;
  @override
  SideMode get sideMode => throw _privateConstructorUsedError;
  @override
  DateTime get startDate => throw _privateConstructorUsedError;
  @override
  List<Instruction> get instructions => throw _privateConstructorUsedError;
  @override
  DateTime? get endDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChallengeCopyWith<_Challenge> get copyWith =>
      throw _privateConstructorUsedError;
}
