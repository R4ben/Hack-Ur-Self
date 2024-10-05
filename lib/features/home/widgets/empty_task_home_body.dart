import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_ur_self/core/localization/translations.dart';
import 'package:hack_ur_self/core/router/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmptyTaskHomeBody extends HookConsumerWidget {
  const EmptyTaskHomeBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        children: [
          Text("Nada"),
          const Gap(16),
          OutlinedButton.icon(
            onPressed: () async {
              await const NewLifeProjectRoute().push(context);
            },
            icon: const Icon(FluentIcons.add_24_regular),
            label: Text(t.lifeProjects.add.buttonText),
          ),
        ],
      ),
    );
  }
}
