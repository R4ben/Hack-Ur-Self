import 'dart:io';

import 'package:hack_ur_self/core/logger/custom_logger.dart';
import 'package:hack_ur_self/core/logger/logger_mixins.dart';
import 'package:loggy/loggy.dart';

class LoggerController extends LoggyPrinter with InfraLogger {
  final LoggyPrinter consolePrinter;
  final Map<String, LoggyPrinter> otherPrinters;

  LoggerController(this.consolePrinter, this.otherPrinters);
  static late LoggerController _instance;
  static LoggerController get instance => _instance;
  static void preInit() {
    Loggy.initLoggy(logPrinter: ConsolePrinter());
  }

  static void init(String appLogPath) {
    _instance =
        LoggerController(ConsolePrinter(), {"app": FileLogPrinter(appLogPath)});
    Loggy.initLoggy(logPrinter: _instance);
  }

  static Future<void> postInit(bool debugMode) async {
    final loglevel = debugMode ? LogLevel.all : LogLevel.info;
    final logToFile = debugMode || (!Platform.isAndroid && !Platform.isIOS);
    if (!logToFile) _instance.removePrinter("app");
    Loggy.initLoggy(
      logPrinter: _instance,
      logOptions: LogOptions(loglevel),
    );
  }

  void addPrinter(String name, LoggyPrinter printer) {
    loggy.debug("adding [$name] printer");
    otherPrinters.putIfAbsent(name, () => printer);
  }

  void removePrinter(String name) {
    loggy.debug('remove [$name] printer');
    final printer = otherPrinters[name];
    if (printer case FileLogPrinter()) printer.dispose();
    otherPrinters.remove(name);
  }

  @override
  void onLog(LogRecord record) {
    consolePrinter.onLog(record);
    for (final printer in otherPrinters.values) {
      printer.onLog(record);
    }
  }
}
