// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Settings _$SettingsFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
class _$SettingsTearOff {
  const _$SettingsTearOff();

  _Settings call(
      {String? id,
      required UserSettings userSettings,
      required WorkoutSettings workoutSettings}) {
    return _Settings(
      id: id,
      userSettings: userSettings,
      workoutSettings: workoutSettings,
    );
  }

  Settings fromJson(Map<String, Object> json) {
    return Settings.fromJson(json);
  }
}

/// @nodoc
const $Settings = _$SettingsTearOff();

/// @nodoc
mixin _$Settings {
  String? get id => throw _privateConstructorUsedError;
  UserSettings get userSettings => throw _privateConstructorUsedError;
  WorkoutSettings get workoutSettings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsCopyWith<Settings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res>;
  $Res call(
      {String? id, UserSettings userSettings, WorkoutSettings workoutSettings});

  $UserSettingsCopyWith<$Res> get userSettings;
  $WorkoutSettingsCopyWith<$Res> get workoutSettings;
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res> implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  final Settings _value;
  // ignore: unused_field
  final $Res Function(Settings) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userSettings = freezed,
    Object? workoutSettings = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userSettings: userSettings == freezed
          ? _value.userSettings
          : userSettings // ignore: cast_nullable_to_non_nullable
              as UserSettings,
      workoutSettings: workoutSettings == freezed
          ? _value.workoutSettings
          : workoutSettings // ignore: cast_nullable_to_non_nullable
              as WorkoutSettings,
    ));
  }

  @override
  $UserSettingsCopyWith<$Res> get userSettings {
    return $UserSettingsCopyWith<$Res>(_value.userSettings, (value) {
      return _then(_value.copyWith(userSettings: value));
    });
  }

  @override
  $WorkoutSettingsCopyWith<$Res> get workoutSettings {
    return $WorkoutSettingsCopyWith<$Res>(_value.workoutSettings, (value) {
      return _then(_value.copyWith(workoutSettings: value));
    });
  }
}

/// @nodoc
abstract class _$SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) then) =
      __$SettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id, UserSettings userSettings, WorkoutSettings workoutSettings});

  @override
  $UserSettingsCopyWith<$Res> get userSettings;
  @override
  $WorkoutSettingsCopyWith<$Res> get workoutSettings;
}

/// @nodoc
class __$SettingsCopyWithImpl<$Res> extends _$SettingsCopyWithImpl<$Res>
    implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(_Settings _value, $Res Function(_Settings) _then)
      : super(_value, (v) => _then(v as _Settings));

  @override
  _Settings get _value => super._value as _Settings;

  @override
  $Res call({
    Object? id = freezed,
    Object? userSettings = freezed,
    Object? workoutSettings = freezed,
  }) {
    return _then(_Settings(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userSettings: userSettings == freezed
          ? _value.userSettings
          : userSettings // ignore: cast_nullable_to_non_nullable
              as UserSettings,
      workoutSettings: workoutSettings == freezed
          ? _value.workoutSettings
          : workoutSettings // ignore: cast_nullable_to_non_nullable
              as WorkoutSettings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Settings extends _Settings with DiagnosticableTreeMixin {
  const _$_Settings(
      {this.id, required this.userSettings, required this.workoutSettings})
      : super._();

  factory _$_Settings.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsFromJson(json);

  @override
  final String? id;
  @override
  final UserSettings userSettings;
  @override
  final WorkoutSettings workoutSettings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Settings(id: $id, userSettings: $userSettings, workoutSettings: $workoutSettings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Settings'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userSettings', userSettings))
      ..add(DiagnosticsProperty('workoutSettings', workoutSettings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Settings &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userSettings, userSettings) ||
                const DeepCollectionEquality()
                    .equals(other.userSettings, userSettings)) &&
            (identical(other.workoutSettings, workoutSettings) ||
                const DeepCollectionEquality()
                    .equals(other.workoutSettings, workoutSettings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userSettings) ^
      const DeepCollectionEquality().hash(workoutSettings);

  @JsonKey(ignore: true)
  @override
  _$SettingsCopyWith<_Settings> get copyWith =>
      __$SettingsCopyWithImpl<_Settings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsToJson(this);
  }
}

abstract class _Settings extends Settings {
  const factory _Settings(
      {String? id,
      required UserSettings userSettings,
      required WorkoutSettings workoutSettings}) = _$_Settings;
  const _Settings._() : super._();

  factory _Settings.fromJson(Map<String, dynamic> json) = _$_Settings.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  UserSettings get userSettings => throw _privateConstructorUsedError;
  @override
  WorkoutSettings get workoutSettings => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SettingsCopyWith<_Settings> get copyWith =>
      throw _privateConstructorUsedError;
}
