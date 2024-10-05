import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hack_ur_self/core/localization/locale_preferences.dart';
import 'package:hack_ur_self/core/model/constants.dart';
import 'package:hack_ur_self/core/router/app_router.dart';
import 'package:hack_ur_self/core/theme/app_theme.dart';
import 'package:hack_ur_self/core/theme/theme_preferences.dart';
import 'package:hack_ur_self/gen/translations.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themePreferencesProvider);
    final theme = AppTheme(themeMode);
    final locale = ref.watch(localePreferencesProvider);
    final router = ref.watch(routerProvider);
    return DynamicColorBuilder(
      builder: (ColorScheme? lightColorScheme, ColorScheme? darkColorScheme) {
        return MaterialApp.router(
          locale: locale.flutterLocale,
          supportedLocales: AppLocaleUtils.supportedLocales,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          themeMode: themeMode.flutterThemeMode,
          theme: theme.lightTheme(lightColorScheme),
          darkTheme: theme.darkTheme(darkColorScheme),
          routerConfig: router,
          debugShowCheckedModeBanner: false,
          title: Constants.appName,
        );
      },
    );
  }
}
