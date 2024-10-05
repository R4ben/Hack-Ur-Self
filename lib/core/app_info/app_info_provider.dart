import 'dart:io';

import 'package:hack_ur_self/core/model/app_info_entity.dart';
import 'package:hack_ur_self/core/model/environment.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';
part 'app_info_provider.g.dart';

@Riverpod(keepAlive: true)
Environment environment(EnvironmentRef ref) =>
    throw Exception("override environmentProvider");

@Riverpod(keepAlive: true)
class AppInfo extends _$AppInfo {
  @override
  Future<AppInfoEntity> build() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final environment = ref.watch(environmentProvider);
    return AppInfoEntity(
      name: packageInfo.appName,
      version: packageInfo.version,
      buildNumber: packageInfo.buildNumber,
      release: Release.read(),
      operatingSystem: Platform.operatingSystem,
      operatingSystemVersion: Platform.operatingSystemVersion,
      environment: environment,
    );
  }
}
