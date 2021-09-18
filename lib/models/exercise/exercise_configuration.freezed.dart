// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetRepetitionConfiguration _$SetRepetitionConfigurationFromJson(
    Map<String, dynamic> json) {
  return _SetRepetitionConfiguration.fromJson(json);
}

/// @nodoc
class _$SetRepetitionConfigurationTearOff {
  const _$SetRepetitionConfigurationTearOff();

  _SetRepetitionConfiguration call(
      {String? id,
      required int repetitions,
      required int sets,
      required int pauseSeconds}) {
    return _SetRepetitionConfiguration(
      id: id,
      repetitions: repetitions,
      sets: sets,
      pauseSeconds: pauseSeconds,
    );
  }

  SetRepetitionConfiguration fromJson(Map<String, Object> json) {
    return SetRepetitionConfiguration.fromJson(json);
  }
}

/// @nodoc
const $SetRepetitionConfiguration = _$SetRepetitionConfigurationTearOff();

/// @nodoc
mixin _$SetRepetitionConfiguration {
  String? get id => throw _privateConstructorUsedError;
  int get repetitions => throw _privateConstructorUsedError;
  int get sets => throw _privateConstructorUsedError;
  int get pauseSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetRepetitionConfigurationCopyWith<SetRepetitionConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetRepetitionConfigurationCopyWith<$Res> {
  factory $SetRepetitionConfigurationCopyWith(SetRepetitionConfiguration value,
          $Res Function(SetRepetitionConfiguration) then) =
      _$SetRepetitionConfigurationCopyWithImpl<$Res>;
  $Res call({String? id, int repetitions, int sets, int pauseSeconds});
}

/// @nodoc
class _$SetRepetitionConfigurationCopyWithImpl<$Res>
    implements $SetRepetitionConfigurationCopyWith<$Res> {
  _$SetRepetitionConfigurationCopyWithImpl(this._value, this._then);

  final SetRepetitionConfiguration _value;
  // ignore: unused_field
  final $Res Function(SetRepetitionConfiguration) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? repetitions = freezed,
    Object? sets = freezed,
    Object? pauseSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      repetitions: repetitions == freezed
          ? _value.repetitions
          : repetitions // ignore: cast_nullable_to_non_nullable
              as int,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      pauseSeconds: pauseSeconds == freezed
          ? _value.pauseSeconds
          : pauseSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SetRepetitionConfigurationCopyWith<$Res>
    implements $SetRepetitionConfigurationCopyWith<$Res> {
  factory _$SetRepetitionConfigurationCopyWith(
          _SetRepetitionConfiguration value,
          $Res Function(_SetRepetitionConfiguration) then) =
      __$SetRepetitionConfigurationCopyWithImpl<$Res>;
  @override
  $Res call({String? id, int repetitions, int sets, int pauseSeconds});
}

/// @nodoc
class __$SetRepetitionConfigurationCopyWithImpl<$Res>
    extends _$SetRepetitionConfigurationCopyWithImpl<$Res>
    implements _$SetRepetitionConfigurationCopyWith<$Res> {
  __$SetRepetitionConfigurationCopyWithImpl(_SetRepetitionConfiguration _value,
      $Res Function(_SetRepetitionConfiguration) _then)
      : super(_value, (v) => _then(v as _SetRepetitionConfiguration));

  @override
  _SetRepetitionConfiguration get _value =>
      super._value as _SetRepetitionConfiguration;

  @override
  $Res call({
    Object? id = freezed,
    Object? repetitions = freezed,
    Object? sets = freezed,
    Object? pauseSeconds = freezed,
  }) {
    return _then(_SetRepetitionConfiguration(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      repetitions: repetitions == freezed
          ? _value.repetitions
          : repetitions // ignore: cast_nullable_to_non_nullable
              as int,
      sets: sets == freezed
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      pauseSeconds: pauseSeconds == freezed
          ? _value.pauseSeconds
          : pauseSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(ExerciseTypeConfiguration)
class _$_SetRepetitionConfiguration extends _SetRepetitionConfiguration {
  const _$_SetRepetitionConfiguration(
      {this.id,
      required this.repetitions,
      required this.sets,
      required this.pauseSeconds})
      : super._();

  factory _$_SetRepetitionConfiguration.fromJson(Map<String, dynamic> json) =>
      _$$_SetRepetitionConfigurationFromJson(json);

  @override
  final String? id;
  @override
  final int repetitions;
  @override
  final int sets;
  @override
  final int pauseSeconds;

  @override
  String toString() {
    return 'SetRepetitionConfiguration(id: $id, repetitions: $repetitions, sets: $sets, pauseSeconds: $pauseSeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetRepetitionConfiguration &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.repetitions, repetitions) ||
                const DeepCollectionEquality()
                    .equals(other.repetitions, repetitions)) &&
            (identical(other.sets, sets) ||
                const DeepCollectionEquality().equals(other.sets, sets)) &&
            (identical(other.pauseSeconds, pauseSeconds) ||
                const DeepCollectionEquality()
                    .equals(other.pauseSeconds, pauseSeconds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(repetitions) ^
      const DeepCollectionEquality().hash(sets) ^
      const DeepCollectionEquality().hash(pauseSeconds);

  @JsonKey(ignore: true)
  @override
  _$SetRepetitionConfigurationCopyWith<_SetRepetitionConfiguration>
      get copyWith => __$SetRepetitionConfigurationCopyWithImpl<
          _SetRepetitionConfiguration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SetRepetitionConfigurationToJson(this);
  }
}

abstract class _SetRepetitionConfiguration extends SetRepetitionConfiguration
    implements ExerciseTypeConfiguration {
  const factory _SetRepetitionConfiguration(
      {String? id,
      required int repetitions,
      required int sets,
      required int pauseSeconds}) = _$_SetRepetitionConfiguration;
  const _SetRepetitionConfiguration._() : super._();

  factory _SetRepetitionConfiguration.fromJson(Map<String, dynamic> json) =
      _$_SetRepetitionConfiguration.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  int get repetitions => throw _privateConstructorUsedError;
  @override
  int get sets => throw _privateConstructorUsedError;
  @override
  int get pauseSeconds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SetRepetitionConfigurationCopyWith<_SetRepetitionConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

ThreeToSevenConfiguration _$ThreeToSevenConfigurationFromJson(
    Map<String, dynamic> json) {
  return _ThreeToSevenConfiguration.fromJson(json);
}

/// @nodoc
class _$ThreeToSevenConfigurationTearOff {
  const _$ThreeToSevenConfigurationTearOff();

  _ThreeToSevenConfiguration call(
      {String? id,
      int minRepetitions = 3,
      int maxRepetitions = 7,
      int pauseSeconds = 20}) {
    return _ThreeToSevenConfiguration(
      id: id,
      minRepetitions: minRepetitions,
      maxRepetitions: maxRepetitions,
      pauseSeconds: pauseSeconds,
    );
  }

  ThreeToSevenConfiguration fromJson(Map<String, Object> json) {
    return ThreeToSevenConfiguration.fromJson(json);
  }
}

/// @nodoc
const $ThreeToSevenConfiguration = _$ThreeToSevenConfigurationTearOff();

/// @nodoc
mixin _$ThreeToSevenConfiguration {
  String? get id => throw _privateConstructorUsedError;
  int get minRepetitions => throw _privateConstructorUsedError;
  int get maxRepetitions => throw _privateConstructorUsedError;
  int get pauseSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThreeToSevenConfigurationCopyWith<ThreeToSevenConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreeToSevenConfigurationCopyWith<$Res> {
  factory $ThreeToSevenConfigurationCopyWith(ThreeToSevenConfiguration value,
          $Res Function(ThreeToSevenConfiguration) then) =
      _$ThreeToSevenConfigurationCopyWithImpl<$Res>;
  $Res call(
      {String? id, int minRepetitions, int maxRepetitions, int pauseSeconds});
}

/// @nodoc
class _$ThreeToSevenConfigurationCopyWithImpl<$Res>
    implements $ThreeToSevenConfigurationCopyWith<$Res> {
  _$ThreeToSevenConfigurationCopyWithImpl(this._value, this._then);

  final ThreeToSevenConfiguration _value;
  // ignore: unused_field
  final $Res Function(ThreeToSevenConfiguration) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? minRepetitions = freezed,
    Object? maxRepetitions = freezed,
    Object? pauseSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      minRepetitions: minRepetitions == freezed
          ? _value.minRepetitions
          : minRepetitions // ignore: cast_nullable_to_non_nullable
              as int,
      maxRepetitions: maxRepetitions == freezed
          ? _value.maxRepetitions
          : maxRepetitions // ignore: cast_nullable_to_non_nullable
              as int,
      pauseSeconds: pauseSeconds == freezed
          ? _value.pauseSeconds
          : pauseSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ThreeToSevenConfigurationCopyWith<$Res>
    implements $ThreeToSevenConfigurationCopyWith<$Res> {
  factory _$ThreeToSevenConfigurationCopyWith(_ThreeToSevenConfiguration value,
          $Res Function(_ThreeToSevenConfiguration) then) =
      __$ThreeToSevenConfigurationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id, int minRepetitions, int maxRepetitions, int pauseSeconds});
}

/// @nodoc
class __$ThreeToSevenConfigurationCopyWithImpl<$Res>
    extends _$ThreeToSevenConfigurationCopyWithImpl<$Res>
    implements _$ThreeToSevenConfigurationCopyWith<$Res> {
  __$ThreeToSevenConfigurationCopyWithImpl(_ThreeToSevenConfiguration _value,
      $Res Function(_ThreeToSevenConfiguration) _then)
      : super(_value, (v) => _then(v as _ThreeToSevenConfiguration));

  @override
  _ThreeToSevenConfiguration get _value =>
      super._value as _ThreeToSevenConfiguration;

  @override
  $Res call({
    Object? id = freezed,
    Object? minRepetitions = freezed,
    Object? maxRepetitions = freezed,
    Object? pauseSeconds = freezed,
  }) {
    return _then(_ThreeToSevenConfiguration(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      minRepetitions: minRepetitions == freezed
          ? _value.minRepetitions
          : minRepetitions // ignore: cast_nullable_to_non_nullable
              as int,
      maxRepetitions: maxRepetitions == freezed
          ? _value.maxRepetitions
          : maxRepetitions // ignore: cast_nullable_to_non_nullable
              as int,
      pauseSeconds: pauseSeconds == freezed
          ? _value.pauseSeconds
          : pauseSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(ExerciseTypeConfiguration)
class _$_ThreeToSevenConfiguration extends _ThreeToSevenConfiguration {
  const _$_ThreeToSevenConfiguration(
      {this.id,
      this.minRepetitions = 3,
      this.maxRepetitions = 7,
      this.pauseSeconds = 20})
      : super._();

  factory _$_ThreeToSevenConfiguration.fromJson(Map<String, dynamic> json) =>
      _$$_ThreeToSevenConfigurationFromJson(json);

  @override
  final String? id;
  @JsonKey(defaultValue: 3)
  @override
  final int minRepetitions;
  @JsonKey(defaultValue: 7)
  @override
  final int maxRepetitions;
  @JsonKey(defaultValue: 20)
  @override
  final int pauseSeconds;

  @override
  String toString() {
    return 'ThreeToSevenConfiguration(id: $id, minRepetitions: $minRepetitions, maxRepetitions: $maxRepetitions, pauseSeconds: $pauseSeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThreeToSevenConfiguration &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.minRepetitions, minRepetitions) ||
                const DeepCollectionEquality()
                    .equals(other.minRepetitions, minRepetitions)) &&
            (identical(other.maxRepetitions, maxRepetitions) ||
                const DeepCollectionEquality()
                    .equals(other.maxRepetitions, maxRepetitions)) &&
            (identical(other.pauseSeconds, pauseSeconds) ||
                const DeepCollectionEquality()
                    .equals(other.pauseSeconds, pauseSeconds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(minRepetitions) ^
      const DeepCollectionEquality().hash(maxRepetitions) ^
      const DeepCollectionEquality().hash(pauseSeconds);

  @JsonKey(ignore: true)
  @override
  _$ThreeToSevenConfigurationCopyWith<_ThreeToSevenConfiguration>
      get copyWith =>
          __$ThreeToSevenConfigurationCopyWithImpl<_ThreeToSevenConfiguration>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThreeToSevenConfigurationToJson(this);
  }
}

abstract class _ThreeToSevenConfiguration extends ThreeToSevenConfiguration
    implements ExerciseTypeConfiguration {
  const factory _ThreeToSevenConfiguration(
      {String? id,
      int minRepetitions,
      int maxRepetitions,
      int pauseSeconds}) = _$_ThreeToSevenConfiguration;
  const _ThreeToSevenConfiguration._() : super._();

  factory _ThreeToSevenConfiguration.fromJson(Map<String, dynamic> json) =
      _$_ThreeToSevenConfiguration.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  int get minRepetitions => throw _privateConstructorUsedError;
  @override
  int get maxRepetitions => throw _privateConstructorUsedError;
  @override
  int get pauseSeconds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ThreeToSevenConfigurationCopyWith<_ThreeToSevenConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

DoPauseConfiguration _$DoPauseConfigurationFromJson(Map<String, dynamic> json) {
  return _DoPauseConfiguration.fromJson(json);
}

/// @nodoc
class _$DoPauseConfigurationTearOff {
  const _$DoPauseConfigurationTearOff();

  _DoPauseConfiguration call(
      {String? id, required int repetitions, int pauseSeconds = 20}) {
    return _DoPauseConfiguration(
      id: id,
      repetitions: repetitions,
      pauseSeconds: pauseSeconds,
    );
  }

  DoPauseConfiguration fromJson(Map<String, Object> json) {
    return DoPauseConfiguration.fromJson(json);
  }
}

/// @nodoc
const $DoPauseConfiguration = _$DoPauseConfigurationTearOff();

/// @nodoc
mixin _$DoPauseConfiguration {
  String? get id => throw _privateConstructorUsedError;
  int get repetitions => throw _privateConstructorUsedError;
  int get pauseSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoPauseConfigurationCopyWith<DoPauseConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoPauseConfigurationCopyWith<$Res> {
  factory $DoPauseConfigurationCopyWith(DoPauseConfiguration value,
          $Res Function(DoPauseConfiguration) then) =
      _$DoPauseConfigurationCopyWithImpl<$Res>;
  $Res call({String? id, int repetitions, int pauseSeconds});
}

/// @nodoc
class _$DoPauseConfigurationCopyWithImpl<$Res>
    implements $DoPauseConfigurationCopyWith<$Res> {
  _$DoPauseConfigurationCopyWithImpl(this._value, this._then);

  final DoPauseConfiguration _value;
  // ignore: unused_field
  final $Res Function(DoPauseConfiguration) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? repetitions = freezed,
    Object? pauseSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      repetitions: repetitions == freezed
          ? _value.repetitions
          : repetitions // ignore: cast_nullable_to_non_nullable
              as int,
      pauseSeconds: pauseSeconds == freezed
          ? _value.pauseSeconds
          : pauseSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DoPauseConfigurationCopyWith<$Res>
    implements $DoPauseConfigurationCopyWith<$Res> {
  factory _$DoPauseConfigurationCopyWith(_DoPauseConfiguration value,
          $Res Function(_DoPauseConfiguration) then) =
      __$DoPauseConfigurationCopyWithImpl<$Res>;
  @override
  $Res call({String? id, int repetitions, int pauseSeconds});
}

/// @nodoc
class __$DoPauseConfigurationCopyWithImpl<$Res>
    extends _$DoPauseConfigurationCopyWithImpl<$Res>
    implements _$DoPauseConfigurationCopyWith<$Res> {
  __$DoPauseConfigurationCopyWithImpl(
      _DoPauseConfiguration _value, $Res Function(_DoPauseConfiguration) _then)
      : super(_value, (v) => _then(v as _DoPauseConfiguration));

  @override
  _DoPauseConfiguration get _value => super._value as _DoPauseConfiguration;

  @override
  $Res call({
    Object? id = freezed,
    Object? repetitions = freezed,
    Object? pauseSeconds = freezed,
  }) {
    return _then(_DoPauseConfiguration(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      repetitions: repetitions == freezed
          ? _value.repetitions
          : repetitions // ignore: cast_nullable_to_non_nullable
              as int,
      pauseSeconds: pauseSeconds == freezed
          ? _value.pauseSeconds
          : pauseSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(ExerciseTypeConfiguration)
class _$_DoPauseConfiguration extends _DoPauseConfiguration {
  const _$_DoPauseConfiguration(
      {this.id, required this.repetitions, this.pauseSeconds = 20})
      : super._();

  factory _$_DoPauseConfiguration.fromJson(Map<String, dynamic> json) =>
      _$$_DoPauseConfigurationFromJson(json);

  @override
  final String? id;
  @override
  final int repetitions;
  @JsonKey(defaultValue: 20)
  @override
  final int pauseSeconds;

  @override
  String toString() {
    return 'DoPauseConfiguration(id: $id, repetitions: $repetitions, pauseSeconds: $pauseSeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DoPauseConfiguration &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.repetitions, repetitions) ||
                const DeepCollectionEquality()
                    .equals(other.repetitions, repetitions)) &&
            (identical(other.pauseSeconds, pauseSeconds) ||
                const DeepCollectionEquality()
                    .equals(other.pauseSeconds, pauseSeconds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(repetitions) ^
      const DeepCollectionEquality().hash(pauseSeconds);

  @JsonKey(ignore: true)
  @override
  _$DoPauseConfigurationCopyWith<_DoPauseConfiguration> get copyWith =>
      __$DoPauseConfigurationCopyWithImpl<_DoPauseConfiguration>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoPauseConfigurationToJson(this);
  }
}

abstract class _DoPauseConfiguration extends DoPauseConfiguration
    implements ExerciseTypeConfiguration {
  const factory _DoPauseConfiguration(
      {String? id,
      required int repetitions,
      int pauseSeconds}) = _$_DoPauseConfiguration;
  const _DoPauseConfiguration._() : super._();

  factory _DoPauseConfiguration.fromJson(Map<String, dynamic> json) =
      _$_DoPauseConfiguration.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  int get repetitions => throw _privateConstructorUsedError;
  @override
  int get pauseSeconds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DoPauseConfigurationCopyWith<_DoPauseConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

HoldConfiguration _$HoldConfigurationFromJson(Map<String, dynamic> json) {
  return _HoldConfiguration.fromJson(json);
}

/// @nodoc
class _$HoldConfigurationTearOff {
  const _$HoldConfigurationTearOff();

  _HoldConfiguration call({String? id, int holdSeconds = 60}) {
    return _HoldConfiguration(
      id: id,
      holdSeconds: holdSeconds,
    );
  }

  HoldConfiguration fromJson(Map<String, Object> json) {
    return HoldConfiguration.fromJson(json);
  }
}

/// @nodoc
const $HoldConfiguration = _$HoldConfigurationTearOff();

/// @nodoc
mixin _$HoldConfiguration {
  String? get id => throw _privateConstructorUsedError;
  int get holdSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HoldConfigurationCopyWith<HoldConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoldConfigurationCopyWith<$Res> {
  factory $HoldConfigurationCopyWith(
          HoldConfiguration value, $Res Function(HoldConfiguration) then) =
      _$HoldConfigurationCopyWithImpl<$Res>;
  $Res call({String? id, int holdSeconds});
}

/// @nodoc
class _$HoldConfigurationCopyWithImpl<$Res>
    implements $HoldConfigurationCopyWith<$Res> {
  _$HoldConfigurationCopyWithImpl(this._value, this._then);

  final HoldConfiguration _value;
  // ignore: unused_field
  final $Res Function(HoldConfiguration) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? holdSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      holdSeconds: holdSeconds == freezed
          ? _value.holdSeconds
          : holdSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$HoldConfigurationCopyWith<$Res>
    implements $HoldConfigurationCopyWith<$Res> {
  factory _$HoldConfigurationCopyWith(
          _HoldConfiguration value, $Res Function(_HoldConfiguration) then) =
      __$HoldConfigurationCopyWithImpl<$Res>;
  @override
  $Res call({String? id, int holdSeconds});
}

/// @nodoc
class __$HoldConfigurationCopyWithImpl<$Res>
    extends _$HoldConfigurationCopyWithImpl<$Res>
    implements _$HoldConfigurationCopyWith<$Res> {
  __$HoldConfigurationCopyWithImpl(
      _HoldConfiguration _value, $Res Function(_HoldConfiguration) _then)
      : super(_value, (v) => _then(v as _HoldConfiguration));

  @override
  _HoldConfiguration get _value => super._value as _HoldConfiguration;

  @override
  $Res call({
    Object? id = freezed,
    Object? holdSeconds = freezed,
  }) {
    return _then(_HoldConfiguration(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      holdSeconds: holdSeconds == freezed
          ? _value.holdSeconds
          : holdSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(ExerciseTypeConfiguration)
class _$_HoldConfiguration extends _HoldConfiguration {
  const _$_HoldConfiguration({this.id, this.holdSeconds = 60}) : super._();

  factory _$_HoldConfiguration.fromJson(Map<String, dynamic> json) =>
      _$$_HoldConfigurationFromJson(json);

  @override
  final String? id;
  @JsonKey(defaultValue: 60)
  @override
  final int holdSeconds;

  @override
  String toString() {
    return 'HoldConfiguration(id: $id, holdSeconds: $holdSeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HoldConfiguration &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.holdSeconds, holdSeconds) ||
                const DeepCollectionEquality()
                    .equals(other.holdSeconds, holdSeconds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(holdSeconds);

  @JsonKey(ignore: true)
  @override
  _$HoldConfigurationCopyWith<_HoldConfiguration> get copyWith =>
      __$HoldConfigurationCopyWithImpl<_HoldConfiguration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HoldConfigurationToJson(this);
  }
}

abstract class _HoldConfiguration extends HoldConfiguration
    implements ExerciseTypeConfiguration {
  const factory _HoldConfiguration({String? id, int holdSeconds}) =
      _$_HoldConfiguration;
  const _HoldConfiguration._() : super._();

  factory _HoldConfiguration.fromJson(Map<String, dynamic> json) =
      _$_HoldConfiguration.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  int get holdSeconds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HoldConfigurationCopyWith<_HoldConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

FlowConfiguration _$FlowConfigurationFromJson(Map<String, dynamic> json) {
  return _FlowConfiguration.fromJson(json);
}

/// @nodoc
class _$FlowConfigurationTearOff {
  const _$FlowConfigurationTearOff();

  _FlowConfiguration call({String? id, required int repetitions}) {
    return _FlowConfiguration(
      id: id,
      repetitions: repetitions,
    );
  }

  FlowConfiguration fromJson(Map<String, Object> json) {
    return FlowConfiguration.fromJson(json);
  }
}

/// @nodoc
const $FlowConfiguration = _$FlowConfigurationTearOff();

/// @nodoc
mixin _$FlowConfiguration {
  String? get id => throw _privateConstructorUsedError;
  int get repetitions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlowConfigurationCopyWith<FlowConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowConfigurationCopyWith<$Res> {
  factory $FlowConfigurationCopyWith(
          FlowConfiguration value, $Res Function(FlowConfiguration) then) =
      _$FlowConfigurationCopyWithImpl<$Res>;
  $Res call({String? id, int repetitions});
}

/// @nodoc
class _$FlowConfigurationCopyWithImpl<$Res>
    implements $FlowConfigurationCopyWith<$Res> {
  _$FlowConfigurationCopyWithImpl(this._value, this._then);

  final FlowConfiguration _value;
  // ignore: unused_field
  final $Res Function(FlowConfiguration) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? repetitions = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      repetitions: repetitions == freezed
          ? _value.repetitions
          : repetitions // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$FlowConfigurationCopyWith<$Res>
    implements $FlowConfigurationCopyWith<$Res> {
  factory _$FlowConfigurationCopyWith(
          _FlowConfiguration value, $Res Function(_FlowConfiguration) then) =
      __$FlowConfigurationCopyWithImpl<$Res>;
  @override
  $Res call({String? id, int repetitions});
}

/// @nodoc
class __$FlowConfigurationCopyWithImpl<$Res>
    extends _$FlowConfigurationCopyWithImpl<$Res>
    implements _$FlowConfigurationCopyWith<$Res> {
  __$FlowConfigurationCopyWithImpl(
      _FlowConfiguration _value, $Res Function(_FlowConfiguration) _then)
      : super(_value, (v) => _then(v as _FlowConfiguration));

  @override
  _FlowConfiguration get _value => super._value as _FlowConfiguration;

  @override
  $Res call({
    Object? id = freezed,
    Object? repetitions = freezed,
  }) {
    return _then(_FlowConfiguration(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      repetitions: repetitions == freezed
          ? _value.repetitions
          : repetitions // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(ExerciseTypeConfiguration)
class _$_FlowConfiguration extends _FlowConfiguration {
  const _$_FlowConfiguration({this.id, required this.repetitions}) : super._();

  factory _$_FlowConfiguration.fromJson(Map<String, dynamic> json) =>
      _$$_FlowConfigurationFromJson(json);

  @override
  final String? id;
  @override
  final int repetitions;

  @override
  String toString() {
    return 'FlowConfiguration(id: $id, repetitions: $repetitions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlowConfiguration &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.repetitions, repetitions) ||
                const DeepCollectionEquality()
                    .equals(other.repetitions, repetitions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(repetitions);

  @JsonKey(ignore: true)
  @override
  _$FlowConfigurationCopyWith<_FlowConfiguration> get copyWith =>
      __$FlowConfigurationCopyWithImpl<_FlowConfiguration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlowConfigurationToJson(this);
  }
}

abstract class _FlowConfiguration extends FlowConfiguration
    implements ExerciseTypeConfiguration {
  const factory _FlowConfiguration({String? id, required int repetitions}) =
      _$_FlowConfiguration;
  const _FlowConfiguration._() : super._();

  factory _FlowConfiguration.fromJson(Map<String, dynamic> json) =
      _$_FlowConfiguration.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  int get repetitions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FlowConfigurationCopyWith<_FlowConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}
