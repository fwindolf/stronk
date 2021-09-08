// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'muscle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Muscle _$MuscleFromJson(Map<String, dynamic> json) {
  return _Muscle.fromJson(json);
}

/// @nodoc
class _$MuscleTearOff {
  const _$MuscleTearOff();

  _Muscle call(
      {String? id, required String name, required MuscleRegion? region}) {
    return _Muscle(
      id: id,
      name: name,
      region: region,
    );
  }

  Muscle fromJson(Map<String, Object> json) {
    return Muscle.fromJson(json);
  }
}

/// @nodoc
const $Muscle = _$MuscleTearOff();

/// @nodoc
mixin _$Muscle {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  MuscleRegion? get region => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MuscleCopyWith<Muscle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MuscleCopyWith<$Res> {
  factory $MuscleCopyWith(Muscle value, $Res Function(Muscle) then) =
      _$MuscleCopyWithImpl<$Res>;
  $Res call({String? id, String name, MuscleRegion? region});
}

/// @nodoc
class _$MuscleCopyWithImpl<$Res> implements $MuscleCopyWith<$Res> {
  _$MuscleCopyWithImpl(this._value, this._then);

  final Muscle _value;
  // ignore: unused_field
  final $Res Function(Muscle) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? region = freezed,
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
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as MuscleRegion?,
    ));
  }
}

/// @nodoc
abstract class _$MuscleCopyWith<$Res> implements $MuscleCopyWith<$Res> {
  factory _$MuscleCopyWith(_Muscle value, $Res Function(_Muscle) then) =
      __$MuscleCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String name, MuscleRegion? region});
}

/// @nodoc
class __$MuscleCopyWithImpl<$Res> extends _$MuscleCopyWithImpl<$Res>
    implements _$MuscleCopyWith<$Res> {
  __$MuscleCopyWithImpl(_Muscle _value, $Res Function(_Muscle) _then)
      : super(_value, (v) => _then(v as _Muscle));

  @override
  _Muscle get _value => super._value as _Muscle;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? region = freezed,
  }) {
    return _then(_Muscle(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as MuscleRegion?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Muscle extends _Muscle with DiagnosticableTreeMixin {
  const _$_Muscle({this.id, required this.name, required this.region})
      : super._();

  factory _$_Muscle.fromJson(Map<String, dynamic> json) =>
      _$$_MuscleFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final MuscleRegion? region;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Muscle(id: $id, name: $name, region: $region)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Muscle'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('region', region));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Muscle &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(region);

  @JsonKey(ignore: true)
  @override
  _$MuscleCopyWith<_Muscle> get copyWith =>
      __$MuscleCopyWithImpl<_Muscle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MuscleToJson(this);
  }
}

abstract class _Muscle extends Muscle {
  const factory _Muscle(
      {String? id,
      required String name,
      required MuscleRegion? region}) = _$_Muscle;
  const _Muscle._() : super._();

  factory _Muscle.fromJson(Map<String, dynamic> json) = _$_Muscle.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  MuscleRegion? get region => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MuscleCopyWith<_Muscle> get copyWith => throw _privateConstructorUsedError;
}
