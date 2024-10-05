import 'dart:io';
import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:loggy/loggy.dart';

class ConsolePrinter extends LoggyPrinter {
  final bool showColors;
  ConsolePrinter({this.showColors = true});
  static final _levelColors = {
    LogLevel.debug:
        AnsiColor(foregroundColor: AnsiColor.grey(0.5), italic: true),
    LogLevel.info: AnsiColor(foregroundColor: 35),
    LogLevel.warning: AnsiColor(foregroundColor: 214),
    LogLevel.error: AnsiColor(foregroundColor: 196)
  };
  AnsiColor? levelColors(LogLevel level) {
    return _levelColors[level];
  }

  @override
  void onLog(LogRecord record) {
    final colorize = showColors && stdout.supportsAnsiEscapes;
    final time = record.time.toIso8601String().split("T")[1];
    final callerFrame =
        record.callerFrame == null ? " " : ' (${record.callerFrame?.location})';
    final String logLevel;
    if (colorize) {
      logLevel = record.level.name.toUpperCase().padRight(8);
    } else {
      logLevel = "[${record.level.name.toUpperCase()}]".padRight(10);
    }
    final AnsiColor color;
    if (showColors) {
      color = levelColors(record.level) ?? AnsiColor();
    } else {
      color = AnsiColor();
    }
    print(
      color(
          "$time $logLevel [${record.loggerName}]$callerFrame${record.message}"),
    );
    if (record.stackTrace != null) {
      print(record.stackTrace);
    }
  }
}

class FileLogPrinter extends LoggyPrinter {
  final File _logFile;
  final LogLevel minLevel;
  late final _sink = _logFile.openWrite(
    mode: FileMode.writeOnly,
  );
  FileLogPrinter(String filePath, {this.minLevel = LogLevel.debug})
      : _logFile = File(filePath);
  @override
  void onLog(LogRecord record) {
    final time = record.time.toIso8601String().split('T')[1];
    _sink.writeln("$time - $record");
    if (record.error != null) {
      _sink.writeln(record.error);
    }
    if (record.stackTrace != null) {
      _sink.writeln(record.stackTrace);
    }
  }

  void dispose() {
    _sink.close();
  }
}
