import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hack_ur_self/core/app_info/app_info_provider.dart';
import 'package:hack_ur_self/core/directories/directories_provider.dart';
import 'package:hack_ur_self/core/logger/logger.dart';
import 'package:hack_ur_self/core/logger/logger_controler.dart';
import 'package:hack_ur_self/core/model/environment.dart';
import 'package:hack_ur_self/core/preferences/preferences_provider.dart';
import 'package:hack_ur_self/features/app/app.dart';
import 'package:hack_ur_self/features/project/data/project_data_provider.dart';
import 'package:hack_ur_self/utils/platform_utils.dart';

Future<void> bootStrap(Environment env, WidgetsBinding widgetsBindis) async {
  LoggerController.preInit();
  FlutterError.onError = Logger.logFlutterError;
  WidgetsBinding.instance.platformDispatcher.onError =
      Logger.logPlatformDispatcherError;

  final stopWatch = Stopwatch()..start();

  final container = ProviderContainer(
    overrides: [
      environmentProvider.overrideWithValue(env),
    ],
  );

  // Start Directories
  await _init(
    'Directories',
    () => container.read(appDirectoriesProvider.future),
  );

  // Start sharedPreferencesProvider
  await _init(
    'preferences',
    () => container.read(sharedPreferencesProvider.future),
  );

  final appInfo = await _init(
    'App Info',
    () => container.read(appInfoProvider.future),
  );

  await _init('project repository',
      () => container.read(projectRepositoryProvider.future));

  if (PlatformUtils.isDesktop) {}

  if (Platform.isAndroid) {
    await _safeInit(
      "Android Aisplay Mode",
      () async {
        await FlutterDisplayMode.setHighRefreshRate();
      },
    );
  }

  //LoggerController.init(container.read());
  Logger.bootstap.info('bootstap took [${stopWatch.elapsedMilliseconds}ms]');
  stopWatch.stop();

  runApp(ProviderScope(parent: container, child: const App()));
}

Future<T> _init<T>(
  String name,
  Future<T> Function() initializer, {
  int? timeout,
}) async {
  final stopWatch = Stopwatch()..start();
  Logger.bootstap.debug('initializing [$name]');
  Future<T> func() => timeout != null
      ? initializer().timeout(Duration(minutes: timeout))
      : initializer();
  try {
    final result = await func();
    Logger.bootstap
        .debug('[$name] initialized in ${stopWatch.elapsedMilliseconds}ms');
    return result;
  } catch (e, stackTrace) {
    Logger.bootstap.error('[$name] error initializing', e, stackTrace);
    rethrow;
  } finally {
    stopWatch.stop();
  }
}

Future<T?> _safeInit<T>(
  String name,
  Future<T> Function() initializer, {
  int? timeout,
}) async {
  try {
    return await _init(
      name,
      initializer,
      timeout: timeout,
    );
  } catch (e) {
    return null;
  }
}
