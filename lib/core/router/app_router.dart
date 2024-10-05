import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hack_ur_self/core/logger/logger_mixins.dart';
import 'package:hack_ur_self/core/router/routes.dart';
import 'package:hack_ur_self/utils/platform_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'app_router.g.dart';

bool _debugMobileRouter = false;
final useMobileRouter =
    !PlatformUtils.isDesktop || (kDebugMode && _debugMobileRouter);
final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter router(RouterRef ref) {
  final notifier = ref.watch(routerListenableProvider.notifier);
  String initialLocation = const HomeRoute().location;
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: initialLocation,
    routes: [useMobileRouter ? $mobileWrapperRoute : $desktopWrapperRoute],
    refreshListenable: notifier,
  );
}

@riverpod
class RouterListenable extends _$RouterListenable
    with AppLogger
    implements Listenable {
  VoidCallback? _routerListenable;

  @override
  Future<void> build() async {
    ref.listenSelf((_, __) {
      if (state.isLoading) {
        loggy.debug('Triggered Listener');
        _routerListenable?.call();
      }
    });
  }

  @override
  void addListener(VoidCallback listener) {
    _routerListenable = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    _routerListenable = null;
  }
}

final tabLacations = [
  const HomeRoute().location,
  const AddObjective().location,
  const ConfigRoute().location,
];

int getCurrentIndex(BuildContext context) {
  final String location = GoRouterState.of(context).uri.path;
  if (location == const HomeRoute().location) return 0;
  int index = 0;
  for (final tab in tabLacations.sublist(1)) {
    index++;
    if (location.startsWith(tab)) return index;
  }
  return 0;
}

void switchTab(int index, BuildContext context) {
  assert(index >= 0 && index < tabLacations.length);
  final location = tabLacations[index];
  return context.go(location);
}
