import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hack_ur_self/core/localization/translations.dart';
import 'package:hack_ur_self/core/theme/app_theme_mode.dart';
import 'package:hack_ur_self/core/theme/theme_preferences.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GeneralSettingsTiles extends HookConsumerWidget {
  const GeneralSettingsTiles({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);
    final themeMode = ref.watch(themePreferencesProvider);
    return Column(
      children: [
        ListTile(
          title: Text(t.settings.general.themeMode),
          subtitle: Text(themeMode.present(t)),
          leading: const Icon(FluentIcons.weather_moon_20_regular),
          onTap: () async {
            final selectedTheme = await showDialog<AppThemeMode>(
              context: context,
              builder: (context) {
                return SimpleDialog(
                  title: Text(t.settings.general.themeMode),
                  children: AppThemeMode.values
                      .map(
                        (e) => RadioListTile(
                          title: Text(e.present(t)),
                          value: e,
                          groupValue: themeMode,
                          onChanged: Navigator.of(context).maybePop,
                        ),
                      )
                      .toList(),
                );
              },
            );
            if (selectedTheme != null) {
              await ref
                  .read(themePreferencesProvider.notifier)
                  .changeThemeMode(selectedTheme);
            }
          },
        ),
        ListTile(
          title: Text(t.settings.general.locale),
        )
      ],
    );
  }
}
