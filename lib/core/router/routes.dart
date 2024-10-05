import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hack_ur_self/core/router/app_router.dart';
import 'package:hack_ur_self/features/common/adaptive_root_scaffold.dart';
import 'package:hack_ur_self/features/config/widgets/config_page.dart';
import 'package:hack_ur_self/features/home/widgets/home.dart';
import 'package:hack_ur_self/features/life_project/widgets/life_projects_details.dart';
part 'routes.g.dart';

final GlobalKey<NavigatorState>? _dynamicRootKey =
    useMobileRouter ? rootNavigatorKey : null;

@TypedShellRoute<MobileWrapperRoute>(
  routes: [
    TypedGoRoute<HomeRoute>(
      path: '/',
      name: HomeRoute.name,
      routes: [
        TypedGoRoute<LifeProjectRoute>(
          path: 'life_project/:id',
          name: LifeProjectRoute.name,
        ),
        TypedGoRoute<NewLifeProjectRoute>(
          path: 'life_project/new',
          name: NewLifeProjectRoute.name,
        ),
        TypedGoRoute<AboutRoute>(
          path: 'about',
          name: AboutRoute.name,
        ),
        TypedGoRoute<AddObjective>(
          path: 'addObjective',
          name: AddObjective.name,
        ),
        TypedGoRoute<ConfigRoute>(
          path: 'settings',
          name: ConfigRoute.name,
        ),
      ],
    ),
  ],
)
class MobileWrapperRoute extends ShellRouteData {
  const MobileWrapperRoute();
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return AdaptiveRootScaffold(navigator);
  }
}

@TypedShellRoute<DesktopWrapperRoute>(
  routes: [
    TypedGoRoute<HomeRoute>(
      path: '/',
      name: HomeRoute.name,
      routes: [
        TypedGoRoute<LifeProjectRoute>(
          path: 'life_project/:id',
          name: LifeProjectRoute.name,
        ),
        TypedGoRoute<NewLifeProjectRoute>(
          path: 'life_project/new',
          name: NewLifeProjectRoute.name,
        ),
        TypedGoRoute<AboutRoute>(
          path: 'about',
          name: AboutRoute.name,
        ),
        TypedGoRoute<AddObjective>(
          path: 'addObjective',
          name: AddObjective.name,
        ),
        TypedGoRoute<ConfigRoute>(
          path: 'settings',
          name: ConfigRoute.name,
        ),
      ],
    ),
  ],
)
class DesktopWrapperRoute extends ShellRouteData {
  const DesktopWrapperRoute();
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return AdaptiveRootScaffold(navigator);
  }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();
  static const String name = 'Home';
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(child: Home());
  }
}

class AddObjective extends GoRouteData {
  const AddObjective();
  static const String name = 'AddObjective';
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(
        child: Center(
      child: Text('AddObjective Page'),
    ));
  }
}

class AboutRoute extends GoRouteData {
  const AboutRoute();
  static const String name = "About";
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(
        child: Center(
      child: Text('About Page'),
    ));
  }
}

class ConfigRoute extends GoRouteData {
  const ConfigRoute();
  static const String name = "Settings";
  static final GlobalKey<NavigatorState>? $parentNavigatorKey = _dynamicRootKey;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    if (useMobileRouter) {
      return const MaterialPage(name: name, child: ConfigPage());
    }
    return const NoTransitionPage(name: name, child: ConfigPage());
  }
}

class NewLifeProjectRoute extends GoRouteData {
  const NewLifeProjectRoute();
  static const String name = "New Life Project";
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(
        fullscreenDialog: true,
        name: name,
        child: LifeProjectsDetails(
          id: "new",
        ));
  }
}

class LifeProjectRoute extends GoRouteData {
  const LifeProjectRoute(this.id);
  final String id;
  static const String name = "Life Project Details";
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
        fullscreenDialog: true,
        name: name,
        child: LifeProjectsDetails(
          id: id,
        ));
  }
}
