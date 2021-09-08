// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExerciseContainer _$ExerciseContainerFromJson(Map<String, dynamic> json) {
  return _ExerciseContainer.fromJson(json);
}

/// @nodoc
class _$ExerciseContainerTearOff {
  const _$ExerciseContainerTearOff();

  _ExerciseContainer call({String? id, required List<Exercise> exercises}) {
    return _ExerciseContainer(
      id: id,
      exercises: exercises,
    );
  }

  ExerciseContainer fromJson(Map<String, Object> json) {
    return ExerciseContainer.fromJson(json);
  }
}

/// @nodoc
const $ExerciseContainer = _$ExerciseContainerTearOff();

/// @nodoc
mixin _$ExerciseContainer {
  String? get id => throw _privateConstructorUsedError;
  List<Exercise> get exercises => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseContainerCopyWith<ExerciseContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseContainerCopyWith<$Res> {
  factory $ExerciseContainerCopyWith(
          ExerciseContainer value, $Res Function(ExerciseContainer) then) =
      _$ExerciseContainerCopyWithImpl<$Res>;
  $Res call({String? id, List<Exercise> exercises});
}

/// @nodoc
class _$ExerciseContainerCopyWithImpl<$Res>
    implements $ExerciseContainerCopyWith<$Res> {
  _$ExerciseContainerCopyWithImpl(this._value, this._then);

  final ExerciseContainer _value;
  // ignore: unused_field
  final $Res Function(ExerciseContainer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? exercises = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
    ));
  }
}

/// @nodoc
abstract class _$ExerciseContainerCopyWith<$Res>
    implements $ExerciseContainerCopyWith<$Res> {
  factory _$ExerciseContainerCopyWith(
          _ExerciseContainer value, $Res Function(_ExerciseContainer) then) =
      __$ExerciseContainerCopyWithImpl<$Res>;
  @override
  $Res call({String? id, List<Exercise> exercises});
}

/// @nodoc
class __$ExerciseContainerCopyWithImpl<$Res>
    extends _$ExerciseContainerCopyWithImpl<$Res>
    implements _$ExerciseContainerCopyWith<$Res> {
  __$ExerciseContainerCopyWithImpl(
      _ExerciseContainer _value, $Res Function(_ExerciseContainer) _then)
      : super(_value, (v) => _then(v as _ExerciseContainer));

  @override
  _ExerciseContainer get _value => super._value as _ExerciseContainer;

  @override
  $Res call({
    Object? id = freezed,
    Object? exercises = freezed,
  }) {
    return _then(_ExerciseContainer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExerciseContainer extends _ExerciseContainer
    with DiagnosticableTreeMixin {
  const _$_ExerciseContainer({this.id, required this.exercises}) : super._();

  factory _$_ExerciseContainer.fromJson(Map<String, dynamic> json) =>
      _$$_ExerciseContainerFromJson(json);

  @override
  final String? id;
  @override
  final List<Exercise> exercises;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseContainer(id: $id, exercises: $exercises)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseContainer'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('exercises', exercises));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseContainer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(exercises);

  @JsonKey(ignore: true)
  @override
  _$ExerciseContainerCopyWith<_ExerciseContainer> get copyWith =>
      __$ExerciseContainerCopyWithImpl<_ExerciseContainer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExerciseContainerToJson(this);
  }
}

abstract class _ExerciseContainer extends ExerciseContainer {
  const factory _ExerciseContainer(
      {String? id, required List<Exercise> exercises}) = _$_ExerciseContainer;
  const _ExerciseContainer._() : super._();

  factory _ExerciseContainer.fromJson(Map<String, dynamic> json) =
      _$_ExerciseContainer.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  List<Exercise> get exercises => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExerciseContainerCopyWith<_ExerciseContainer> get copyWith =>
      throw _privateConstructorUsedError;
}
