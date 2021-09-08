// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'workout_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkoutTag _$WorkoutTagFromJson(Map<String, dynamic> json) {
  return _WorkoutTag.fromJson(json);
}

/// @nodoc
class _$WorkoutTagTearOff {
  const _$WorkoutTagTearOff();

  _WorkoutTag call({String? id, required String name, bool active = false}) {
    return _WorkoutTag(
      id: id,
      name: name,
      active: active,
    );
  }

  WorkoutTag fromJson(Map<String, Object> json) {
    return WorkoutTag.fromJson(json);
  }
}

/// @nodoc
const $WorkoutTag = _$WorkoutTagTearOff();

/// @nodoc
mixin _$WorkoutTag {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutTagCopyWith<WorkoutTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutTagCopyWith<$Res> {
  factory $WorkoutTagCopyWith(
          WorkoutTag value, $Res Function(WorkoutTag) then) =
      _$WorkoutTagCopyWithImpl<$Res>;
  $Res call({String? id, String name, bool active});
}

/// @nodoc
class _$WorkoutTagCopyWithImpl<$Res> implements $WorkoutTagCopyWith<$Res> {
  _$WorkoutTagCopyWithImpl(this._value, this._then);

  final WorkoutTag _value;
  // ignore: unused_field
  final $Res Function(WorkoutTag) _then;

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
abstract class _$WorkoutTagCopyWith<$Res> implements $WorkoutTagCopyWith<$Res> {
  factory _$WorkoutTagCopyWith(
          _WorkoutTag value, $Res Function(_WorkoutTag) then) =
      __$WorkoutTagCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String name, bool active});
}

/// @nodoc
class __$WorkoutTagCopyWithImpl<$Res> extends _$WorkoutTagCopyWithImpl<$Res>
    implements _$WorkoutTagCopyWith<$Res> {
  __$WorkoutTagCopyWithImpl(
      _WorkoutTag _value, $Res Function(_WorkoutTag) _then)
      : super(_value, (v) => _then(v as _WorkoutTag));

  @override
  _WorkoutTag get _value => super._value as _WorkoutTag;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? active = freezed,
  }) {
    return _then(_WorkoutTag(
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
class _$_WorkoutTag extends _WorkoutTag with DiagnosticableTreeMixin {
  const _$_WorkoutTag({this.id, required this.name, this.active = false})
      : super._();

  factory _$_WorkoutTag.fromJson(Map<String, dynamic> json) =>
      _$$_WorkoutTagFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @JsonKey(defaultValue: false)
  @override
  final bool active;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutTag(id: $id, name: $name, active: $active)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutTag'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('active', active));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutTag &&
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
  _$WorkoutTagCopyWith<_WorkoutTag> get copyWith =>
      __$WorkoutTagCopyWithImpl<_WorkoutTag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkoutTagToJson(this);
  }
}

abstract class _WorkoutTag extends WorkoutTag {
  const factory _WorkoutTag({String? id, required String name, bool active}) =
      _$_WorkoutTag;
  const _WorkoutTag._() : super._();

  factory _WorkoutTag.fromJson(Map<String, dynamic> json) =
      _$_WorkoutTag.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool get active => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorkoutTagCopyWith<_WorkoutTag> get copyWith =>
      throw _privateConstructorUsedError;
}
