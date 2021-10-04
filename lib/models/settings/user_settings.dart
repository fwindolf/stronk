import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_settings.freezed.dart';
part 'user_settings.g.dart';

enum Language {
  English, 
  German,
}

extension LanguageExtension on Language {
  String get name {
    switch(this) {
      case Language.English:
        return "English";
      case Language.German:
        return "Deutsch";
    }
  }
}

extension ThemeModeExtension on ThemeMode {
  String get name {
    switch(this) {
      case ThemeMode.dark:
        return "Dark Theme";
      case ThemeMode.light:
        return "Light Theme";
      case ThemeMode.system:
        return "Use System Theme";
    }
  }
}

@freezed
class UserSettings with _$UserSettings {
  const UserSettings._();

  const factory UserSettings({
    @Default(Language.English) Language language,
    @Default(ThemeMode.system) ThemeMode theme,
  }) = _UserSettings;

  factory UserSettings.empty() => const UserSettings();

  factory UserSettings.fromJson(Map<String, dynamic> json) =>
      _$UserSettingsFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
