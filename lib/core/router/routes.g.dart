// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $mobileWrapperRoute,
      $desktopWrapperRoute,
    ];

RouteBase get $mobileWrapperRoute => ShellRouteData.$route(
      factory: $MobileWrapperRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/',
          name: 'Home',
          factory: $HomeRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'life_project/:id',
              name: 'Life Project Details',
              parentNavigatorKey: LifeProjectRoute.$parentNavigatorKey,
              factory: $LifeProjectRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'life_project/new',
              name: 'New Life Project',
              parentNavigatorKey: NewLifeProjectRoute.$parentNavigatorKey,
              factory: $NewLifeProjectRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'about',
              name: 'About',
              factory: $AboutRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'addObjective',
              name: 'AddObjective',
              factory: $AddObjectiveExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'settings',
              name: 'Settings',
              parentNavigatorKey: ConfigRoute.$parentNavigatorKey,
              factory: $ConfigRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $MobileWrapperRouteExtension on MobileWrapperRoute {
  static MobileWrapperRoute _fromState(GoRouterState state) =>
      const MobileWrapperRoute();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LifeProjectRouteExtension on LifeProjectRoute {
  static LifeProjectRoute _fromState(GoRouterState state) => LifeProjectRoute(
        state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/life_project/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NewLifeProjectRouteExtension on NewLifeProjectRoute {
  static NewLifeProjectRoute _fromState(GoRouterState state) =>
      const NewLifeProjectRoute();

  String get location => GoRouteData.$location(
        '/life_project/new',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AboutRouteExtension on AboutRoute {
  static AboutRoute _fromState(GoRouterState state) => const AboutRoute();

  String get location => GoRouteData.$location(
        '/about',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AddObjectiveExtension on AddObjective {
  static AddObjective _fromState(GoRouterState state) => const AddObjective();

  String get location => GoRouteData.$location(
        '/addObjective',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ConfigRouteExtension on ConfigRoute {
  static ConfigRoute _fromState(GoRouterState state) => const ConfigRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $desktopWrapperRoute => ShellRouteData.$route(
      factory: $DesktopWrapperRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/',
          name: 'Home',
          factory: $HomeRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'life_project/:id',
              name: 'Life Project Details',
              parentNavigatorKey: LifeProjectRoute.$parentNavigatorKey,
              factory: $LifeProjectRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'life_project/new',
              name: 'New Life Project',
              parentNavigatorKey: NewLifeProjectRoute.$parentNavigatorKey,
              factory: $NewLifeProjectRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'about',
              name: 'About',
              factory: $AboutRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'addObjective',
              name: 'AddObjective',
              factory: $AddObjectiveExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'settings',
              name: 'Settings',
              parentNavigatorKey: ConfigRoute.$parentNavigatorKey,
              factory: $ConfigRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $DesktopWrapperRouteExtension on DesktopWrapperRoute {
  static DesktopWrapperRoute _fromState(GoRouterState state) =>
      const DesktopWrapperRoute();
}
