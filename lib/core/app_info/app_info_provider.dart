import 'package:hack_ur_self/core/model/environment.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'app_info_provider.g.dart';

@Riverpod(keepAlive: true)
Environment environment(EnvironmentRef ref) =>
    throw Exception("override environment");
