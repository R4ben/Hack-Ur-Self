import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:hack_ur_self/core/directories/directories_provider.dart';
import "package:path/path.dart" as p;

LazyDatabase openConnection() {
  return LazyDatabase(() async {
    final dbDir = await AppDirectories.getDatabaseDirectory();
    final file = File(p.join(dbDir.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
