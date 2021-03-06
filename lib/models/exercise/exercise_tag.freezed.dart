// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExerciseTag _$ExerciseTagFromJson(Map<String, dynamic> json) {
  return _ExerciseTag.fromJson(json);
}

/// @nodoc
class _$ExerciseTagTearOff {
  const _$ExerciseTagTearOff();

  _ExerciseTag call({String? id, required String name, bool active = false}) {
    return _ExerciseTag(
      id: id,
      name: name,
      active: active,
    );
  }

  ExerciseTag fromJson(Map<String, Object> json) {
    return ExerciseTag.fromJson(json);
  }
}

/// @nodoc
const $ExerciseTag = _$ExerciseTagTearOff();

/// @nodoc
mixin _$ExerciseTag {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseTagCopyWith<ExerciseTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseTagCopyWith<$Res> {
  factory $ExerciseTagCopyWith(
          ExerciseTag value, $Res Function(ExerciseTag) then) =
      _$ExerciseTagCopyWithImpl<$Res>;
  $Res call({String? id, String name, bool active});
}

/// @nodoc
class _$ExerciseTagCopyWithImpl<$Res> implements $ExerciseTagCopyWith<$Res> {
  _$ExerciseTagCopyWithImpl(this._value, this._then);

  final ExerciseTag _value;
  // ignore: unused_field
  final $Res Function(ExerciseTag) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? active = freezed,
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
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ExerciseTagCopyWith<$Res>
    implements $ExerciseTagCopyWith<$Res> {
  factory _$ExerciseTagCopyWith(
          _ExerciseTag value, $Res Function(_ExerciseTag) then) =
      __$ExerciseTagCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String name, bool active});
}

/// @nodoc
class __$ExerciseTagCopyWithImpl<$Res> extends _$ExerciseTagCopyWithImpl<$Res>
    implements _$ExerciseTagCopyWith<$Res> {
  __$ExerciseTagCopyWithImpl(
      _ExerciseTag _value, $Res Function(_ExerciseTag) _then)
      : super(_value, (v) => _then(v as _ExerciseTag));

  @override
  _ExerciseTag get _value => super._value as _ExerciseTag;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? active = freezed,
  }) {
    return _then(_ExerciseTag(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExerciseTag extends _ExerciseTag {
  const _$_ExerciseTag({this.id, required this.name, this.active = false})
      : super._();

  factory _$_ExerciseTag.fromJson(Map<String, dynamic> json) =>
      _$$_ExerciseTagFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @JsonKey(defaultValue: false)
  @override
  final bool active;

  @override
  String toString() {
    return 'ExerciseTag(id: $id, name: $name, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseTag &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(active);

  @JsonKey(ignore: true)
  @override
  _$ExerciseTagCopyWith<_ExerciseTag> get copyWith =>
      __$ExerciseTagCopyWithImpl<_ExerciseTag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExerciseTagToJson(this);
  }
}

abstract class _ExerciseTag extends ExerciseTag {
  const factory _ExerciseTag({String? id, required String name, bool active}) =
      _$_ExerciseTag;
  const _ExerciseTag._() : super._();

  factory _ExerciseTag.fromJson(Map<String, dynamic> json) =
      _$_ExerciseTag.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool get active => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExerciseTagCopyWith<_ExerciseTag> get copyWith =>
      throw _privateConstructorUsedError;
}
