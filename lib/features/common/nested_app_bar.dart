import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hack_ur_self/core/preferences/preferences_provider.dart';
import 'package:hack_ur_self/core/router/app_router.dart';
import 'package:hack_ur_self/core/router/routes.dart';
import 'package:hack_ur_self/features/common/adaptive_root_scaffold.dart';

bool showDrawerButton(BuildContext context) {
  if (!useMobileRouter) return true;
  final String location = GoRouterState.of(context).uri.path;
  if (location == const HomeRoute().location) return true;
  return false;
}

class NestedAppBar extends StatelessWidget {
  final Widget? title;
  final List<Widget>? actions;
  final bool pinned;
  final bool forceElevated;
  final PreferredSizeWidget? bottom;

  const NestedAppBar(
      {super.key,
      this.title,
      this.actions,
      this.pinned = true,
      this.forceElevated = false,
      this.bottom});
  @override
  Widget build(BuildContext context) {
    RootScaffold.canShowDrawer(context);
    return SliverAppBar(
      leading: (RootScaffold.stateKey.currentState?.hasDrawer ?? false) &&
              showDrawerButton(context)
          ? DrawerButton(
              onPressed: () {
                RootScaffold.stateKey.currentState?.openDrawer();
              },
            )
          : null,
      title: title,
      actions: actions,
      pinned: pinned,
      forceElevated: forceElevated,
      bottom: bottom,
    );
  }
}
