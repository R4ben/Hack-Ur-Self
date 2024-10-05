import 'package:hack_ur_self/gen/translations.g.dart';

extension AppLocaleX on AppLocale {
  String get localeName => switch (flutterLocale.toString()) {
        'pt' => 'Portugues',
        'en' => 'English',
        _ => "Unknown",
      };
}
