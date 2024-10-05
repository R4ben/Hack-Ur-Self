import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hack_ur_self/core/app_info/app_info_provider.dart';
import 'package:hack_ur_self/core/logger/logger.dart';
import 'package:hack_ur_self/core/logger/logger_controler.dart';
import 'package:hack_ur_self/core/model/environment.dart';
import 'package:hack_ur_self/features/app/app.dart';

Future<void> bootStrap(Environment env, WidgetsBinding widgetsBindis) async {
  LoggerController.preInit();
  FlutterError.onError = Logger.logFlutterError;
  WidgetsBinding.instance.platformDispatcher.onError =
      Logger.logPlatformDispatcherError;

  final stopWatch = Stopwatch()..start();

  final container = [
    environmentProvider.overrideWithValue(env),
  ];
  runApp(ProviderScope(overrides: container, child: const App()));
}
