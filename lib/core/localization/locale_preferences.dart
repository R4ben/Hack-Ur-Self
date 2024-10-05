import 'package:hack_ur_self/core/logger/logger_mixins.dart';
import 'package:hack_ur_self/core/preferences/preferences_provider.dart';
import 'package:hack_ur_self/gen/translations.g.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'locale_preferences.g.dart';

@Riverpod(keepAlive: true)
class LocalePreferences extends _$LocalePreferences with AppLogger {
  @override
  AppLocale build() {
    final persisted =
        ref.watch(sharedPreferencesProvider).requireValue.getString("locale");
    if (persisted == null) return AppLocaleUtils.findDeviceLocale();
    try {
      return AppLocale.values.byName(persisted);
    } catch (e) {
      loggy.error('error setting locale [$persisted]', e);
      return AppLocale.ptPt;
    }
  }

  Future<void> changeLocale(AppLocale value) async {
    state = value;
    await ref
        .read(sharedPreferencesProvider)
        .requireValue
        .setString("locale", value.name);
  }
}
