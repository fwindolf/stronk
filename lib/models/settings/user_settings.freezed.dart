// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserSettings _$UserSettingsFromJson(Map<String, dynamic> json) {
  return _UserSettings.fromJson(json);
}

/// @nodoc
class _$UserSettingsTearOff {
  const _$UserSettingsTearOff();

  _UserSettings call(
      {Language language = Language.English,
      ThemeMode theme = ThemeMode.system}) {
    return _UserSettings(
      language: language,
      theme: theme,
    );
  }

  UserSettings fromJson(Map<String, Object> json) {
    return UserSettings.fromJson(json);
  }
}

/// @nodoc
const $UserSettings = _$UserSettingsTearOff();

/// @nodoc
mixin _$UserSettings {
  Language get language => throw _privateConstructorUsedError;
  ThemeMode get theme => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSettingsCopyWith<UserSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingsCopyWith<$Res> {
  factory $UserSettingsCopyWith(
          UserSettings value, $Res Function(UserSettings) then) =
      _$UserSettingsCopyWithImpl<$Res>;
  $Res call({Language language, ThemeMode theme});
}

/// @nodoc
class _$UserSettingsCopyWithImpl<$Res> implements $UserSettingsCopyWith<$Res> {
  _$UserSettingsCopyWithImpl(this._value, this._then);

  final UserSettings _value;
  // ignore: unused_field
  final $Res Function(UserSettings) _then;

  @override
  $Res call({
    Object? language = freezed,
    Object? theme = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
abstract class _$UserSettingsCopyWith<$Res>
    implements $UserSettingsCopyWith<$Res> {
  factory _$UserSettingsCopyWith(
          _UserSettings value, $Res Function(_UserSettings) then) =
      __$UserSettingsCopyWithImpl<$Res>;
  @override
  $Res call({Language language, ThemeMode theme});
}

/// @nodoc
class __$UserSettingsCopyWithImpl<$Res> extends _$UserSettingsCopyWithImpl<$Res>
    implements _$UserSettingsCopyWith<$Res> {
  __$UserSettingsCopyWithImpl(
      _UserSettings _value, $Res Function(_UserSettings) _then)
      : super(_value, (v) => _then(v as _UserSettings));

  @override
  _UserSettings get _value => super._value as _UserSettings;

  @override
  $Res call({
    Object? language = freezed,
    Object? theme = freezed,
  }) {
    return _then(_UserSettings(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserSettings extends _UserSettings with DiagnosticableTreeMixin {
  const _$_UserSettings(
      {this.language = Language.English, this.theme = ThemeMode.system})
      : super._();

  factory _$_UserSettings.fromJson(Map<String, dynamic> json) =>
      _$$_UserSettingsFromJson(json);

  @JsonKey(defaultValue: Language.English)
  @override
  final Language language;
  @JsonKey(defaultValue: ThemeMode.system)
  @override
  final ThemeMode theme;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserSettings(language: $language, theme: $theme)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserSettings'))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('theme', theme));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserSettings &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(theme);

  @JsonKey(ignore: true)
  @override
  _$UserSettingsCopyWith<_UserSettings> get copyWith =>
      __$UserSettingsCopyWithImpl<_UserSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserSettingsToJson(this);
  }
}

abstract class _UserSettings extends UserSettings {
  const factory _UserSettings({Language language, ThemeMode theme}) =
      _$_UserSettings;
  const _UserSettings._() : super._();

  factory _UserSettings.fromJson(Map<String, dynamic> json) =
      _$_UserSettings.fromJson;

  @override
  Language get language => throw _privateConstructorUsedError;
  @override
  ThemeMode get theme => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserSettingsCopyWith<_UserSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
