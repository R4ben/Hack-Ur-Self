import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:hack_ur_self/core/localization/translations.dart';
import 'package:hack_ur_self/features/common/nested_app_bar.dart';
import 'package:hack_ur_self/features/home/widgets/empty_task_home_body.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Home extends HookConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomScrollView(
            slivers: [
              NestedAppBar(
                title: Text.rich(TextSpan(text: t.general.appTitle)),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(FluentIcons.open_24_filled)),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FluentIcons.add_circle_24_filled),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
