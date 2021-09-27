import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stronk/app/settings/enum_dialog.dart';
import 'package:stronk/controllers/auth_controller.dart';
import 'package:stronk/controllers/settings_controller.dart';
import 'package:stronk/models/settings/settings.dart';
import 'package:stronk/models/settings/user_settings.dart';
import 'package:stronk/app/settings/util.dart';

class UserSettingsWidget extends ConsumerWidget {
  const UserSettingsWidget();

  _buildContent(Settings settings, BuildContext context, WidgetRef ref) {
    final userSettings = settings.userSettings;
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4.0,
                vertical: 12.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "Language",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: Text(
                      userSettings.language.name,
                      style: TextStyle(fontSize: 18),
                    ),
                    flex: 2,
                  ),
                ],
              ),
            ),
            onTap: () async {
              final language = await EnumDialog.show<Language>(
                context,
                "Select Language",
                Language.values
                    .asMap()
                    .map((_, value) => MapEntry(value, value.name)),
                userSettings.language,
              );
              if (language != null) {
                updateSettings(
                  ref,
                  settings.copyWith(
                    userSettings: userSettings.copyWith(
                      language: language,
                    ),
                  ),
                );
              }
            },
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4.0,
                vertical: 12.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "Theme",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: Text(
                      userSettings.theme.name,
                      style: TextStyle(fontSize: 18),
                    ),
                    flex: 2,
                  ),
                ],
              ),
            ),
            onTap: () async {
              final theme = await EnumDialog.show<ThemeMode>(
                context,
                "Select Theme",
                ThemeMode.values
                    .asMap()
                    .map((_, value) => MapEntry(value, value.name)),
                userSettings.theme,
              );
              if (theme != null) {
                updateSettings(
                  ref,
                  settings.copyWith(
                    userSettings: userSettings.copyWith(
                      theme: theme,
                    ),
                  ),
                );
              }
            },
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
