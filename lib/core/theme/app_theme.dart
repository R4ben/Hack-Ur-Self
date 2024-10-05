import 'package:flutter/material.dart';
import 'package:hack_ur_self/core/theme/app_theme_mode.dart';

class AppTheme {
  const AppTheme(this.mode);
  final AppThemeMode mode;
  ThemeData lightTheme(ColorScheme? lightColorScheme) {
    final ColorScheme scheme = lightColorScheme ??
        ColorScheme.fromSeed(seedColor: const Color(0xFF293CA0));
    return ThemeData(colorScheme: scheme, useMaterial3: true);
  }

  ThemeData darkTheme(ColorScheme? darkColorScheme) {
    final ColorScheme schem = darkColorScheme ??
        ColorScheme.fromSeed(
          seedColor: const Color(0xFF293CA0),
          brightness: Brightness.dark,
        );
    return ThemeData(
      useMaterial3: true,
      colorScheme: schem,
      scaffoldBackgroundColor: mode.trueBlack ? Colors.black : schem.surface,
    );
  }
}
