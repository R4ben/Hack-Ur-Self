import 'package:flutter/material.dart';
import 'package:hack_ur_self/core/localization/translations.dart';
import 'package:hack_ur_self/features/common/nested_app_bar.dart';
import 'package:hack_ur_self/features/config/widgets/general_settings_tiles.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfigPage extends HookConsumerWidget {
  const ConfigPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NestedAppBar(
            title: Text(t.settings.pageTitle),
          ),
          SliverList.list(
            children: [
              const GeneralSettingsTiles(),
            ],
          ),
        ],
      ),
    );
  }
}
