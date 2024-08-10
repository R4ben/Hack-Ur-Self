import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hack_ur_self/features/app/app.dart';

Future<void> bootStrap(WidgetsBinding widgetsBindis) async {
  runApp(ProviderScope(child: const App()));
}
