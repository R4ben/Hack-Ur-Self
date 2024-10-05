import 'package:flutter/material.dart';
import 'package:hack_ur_self/gen/translations.g.dart';

enum AppThemeMode {
  system,
  light,
  dark,
  black;

  String present(Translations t) => switch (this) {
        system => t.settings.general.themeModes.system,
        light => t.settings.general.themeModes.light,
        dark => t.settings.general.themeModes.dark,
        black => t.settings.general.themeModes.black,
      };
  ThemeMode get flutterThemeMode => switch (this) {
        system => ThemeMode.system,
        light => ThemeMode.light,
        dark => ThemeMode.dark,
        black => ThemeMode.dark,
      };
  bool get trueBlack => this == black;
}
