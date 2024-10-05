import 'package:loggy/loggy.dart';

/// Applicaation Layer Logger
/// used in NOTIFIERS AND CONTROLLERS
mixin AppLogger implements LoggyType {
  @override
  Loggy<AppLogger> get loggy => Loggy<AppLogger>('$runtimeType');
}

/// Presetation Layer Logger
/// used in widgets and ui
mixin PresLogger implements LoggyType {
  @override
  Loggy<PresLogger> get loggy => Loggy<PresLogger>("$runtimeType");
}

/// Data Layer Logger
/// used in Repositories, DAOs, Services
mixin InfraLogger implements LoggyType {
  @override
  Loggy<InfraLogger> get loggy => Loggy<InfraLogger>('$runtimeType');
}

abstract class LoggerMixin {
  final Loggy loggy;

  LoggerMixin(this.loggy);
}
