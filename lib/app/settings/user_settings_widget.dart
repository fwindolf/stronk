import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/settings/enum_dialog.dart';
import 'package:stronk/controllers/auth_controller.dart';
import 'package:stronk/controllers/settings_controller.dart';
import 'package:stronk/models/settings/settings.dart';
import 'package:stronk/models/settings/user_settings.dart';
import 'package:stronk/app/settings/util.dart';

class LanguageSettingsItem extends SettingsRowItem<Language>{
  
  LanguageSettingsItem({
    required Language language,
    required Function(Language) updateLanguage,
  }) : super(
    title: "Language",
    data: language,
    getValue: (language) => language.name,
    changeValue: (BuildContext context) async {
        final _language = await EnumDialog.show<Language>(
          context,
          "Select Language",
          Language.values
              .asMap()
              .map((_, value) => MapEntry(value, value.name)),
          language,
        );
        if (_language != null) {
          updateLanguage(_language);
        }
      },
  );
}

class ThemeSettingsItem extends SettingsRowItem<ThemeMode> {
    ThemeSettingsItem({
    required ThemeMode theme,
    required Function(ThemeMode) updateTheme,
  }) : super(
    title: "Theme",
    data: theme,
    getValue: (theme) => theme.name,
    changeValue: (BuildContext context) async {
        final _theme = await EnumDialog.show<ThemeMode>(
          context,
          "Select Theme",
          ThemeMode.values
              .asMap()
              .map((_, value) => MapEntry(value, value.name)),
          theme,
        );
        if (_theme != null) {
          updateTheme(_theme);
        }
      },
    );
}


class UserSettingsWidget extends ConsumerWidget {
  const UserSettingsWidget();

  _buildContent(Settings settings, BuildContext context, WidgetRef ref) {
    final userSettings = settings.userSettings;
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          LanguageSettingsItem(
            language: settings.userSettings.language,
            updateLanguage: (language) => updateSettings(
              ref,
              settings.copyWith(
                userSettings: userSettings.copyWith(
                  language: language,
                ),
              ),
            ),
          ),
          ThemeSettingsItem(
            theme: settings.userSettings.theme,
            updateTheme: (theme) => updateSettings(
              ref,
              settings.copyWith(
                userSettings: userSettings.copyWith(
                  theme: theme,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildLoading() {
    return Center(child: CircularProgressIndicator());
  }

  _buildError(error) {
    return Center(child: Text(error.toString()));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.read(authControllerProvider).maybeWhen(
          data: (user) => ref.watch(settingsControllerProvider(user)).when(
                data: (settings) => _buildContent(settings, context, ref),
                loading: () => _buildLoading(),
                error: (error, _) => _buildError(error),
              ),
          orElse: () => _buildError("Not logged in!"),
        );
  }
}
