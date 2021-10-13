// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repetition_execution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetRepetitionExecution _$SetRepetitionExecutionFromJson(
    Map<String, dynamic> json) {
  return _SetRepetitionExecution.fromJson(json);
}

/// @nodoc
class _$SetRepetitionExecutionTearOff {
  const _$SetRepetitionExecutionTearOff();

  _SetRepetitionExecution call({String? id, required List<Set> sets}) {
    return _SetRepetitionExecution(
      id: id,
      sets: sets,
    );
  }

  SetRepetitionExecution fromJson(Map<String, Object> json) {
    return SetRepetitionExecution.fromJson(json);
  }
}

/// @nodoc
const $SetRepetitionExecution = _$SetRepetitionExecutionTearOff();

/// @nodoc
mixin _$SetRepetitionExecution {
  String? get id => throw _privateConstructorUsedError;
  List<Set> get sets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetRepetitionExecutionCopyWith<SetRepetitionExecution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetRepetitionExecutionCopyWith<$Res> {
  factory $SetRepetitionExecutionCopyWith(SetRepetitionExecution value,
          $Res Function(SetRepetitionExecution) then) =
      _$SetRepetitionExecutionCopyWithImpl<$Res>;
  $Res call({String? id, List<Set> sets});
}

/// @nodoc
class _$SetRepetitionExecutionCopyWithImpl<$Res>
    implements $SetRepetitionExecutionCopyWith<$Res> {
  _$SetRepetitionExecutionCopyWithImpl(this._value, this._then);

  final SetRepetitionExecution _value;
  // ignore: unused_field
  final $Res Function(SetRepetitionExecution) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? sets = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<Set>,
    ));
  }
}

/// @nodoc
abstract class _$SetRepetitionExecutionCopyWith<$Res>
    implements $SetRepetitionExecutionCopyWith<$Res> {
  factory _$SetRepetitionExecutionCopyWith(_SetRepetitionExecution value,
          $Res Function(_SetRepetitionExecution) then) =
      __$SetRepetitionExecutionCopyWithImpl<$Res>;
  @override
  $Res call({String? id, List<Set> sets});
}

/// @nodoc
class __$SetRepetitionExecutionCopyWithImpl<$Res>
    extends _$SetRepetitionExecutionCopyWithImpl<$Res>
    implements _$SetRepetitionExecutionCopyWith<$Res> {
  __$SetRepetitionExecutionCopyWithImpl(_SetRepetitionExecution _value,
      $Res Function(_SetRepetitionExecution) _then)
      : super(_value, (v) => _then(v as _SetRepetitionExecution));

  @override
  _SetRepetitionExecution get _value => super._value as _SetRepetitionExecution;

  @override
  $Res call({
    Object? id = freezed,
    Object? sets = freezed,
  }) {
    return _then(_SetRepetitionExecution(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<Set>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(RepetitionExecution)
class _$_SetRepetitionExecution extends _SetRepetitionExecution {
  _$_SetRepetitionExecution({this.id, required this.sets}) : super._();

  factory _$_SetRepetitionExecution.fromJson(Map<String, dynamic> json) =>
      _$$_SetRepetitionExecutionFromJson(json);

  @override
  final String? id;
  @override
  final List<Set> sets;

  @override
  String toString() {
    return 'SetRepetitionExecution(id: $id, sets: $sets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetRepetitionExecution &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sets, sets) ||
                const DeepCollectionEquality().equals(other.sets, sets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(sets);

  @JsonKey(ignore: true)
  @override
  _$SetRepetitionExecutionCopyWith<_SetRepetitionExecution> get copyWith =>
      __$SetRepetitionExecutionCopyWithImpl<_SetRepetitionExecution>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SetRepetitionExecutionToJson(this);
  }
}

abstract class _SetRepetitionExecution extends SetRepetitionExecution
    implements RepetitionExecution {
  factory _SetRepetitionExecution({String? id, required List<Set> sets}) =
      _$_SetRepetitionExecution;
  _SetRepetitionExecution._() : super._();

  factory _SetRepetitionExecution.fromJson(Map<String, dynamic> json) =
      _$_SetRepetitionExecution.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  List<Set> get sets => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SetRepetitionExecutionCopyWith<_SetRepetitionExecution> get copyWith =>
      throw _privateConstructorUsedError;
}
