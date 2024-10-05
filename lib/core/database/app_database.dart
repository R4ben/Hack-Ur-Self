import 'package:drift/drift.dart';
import 'package:hack_ur_self/core/database/connection/database_connection.dart';
import 'package:hack_ur_self/core/database/tables/database_tables.dart';
import 'package:hack_ur_self/core/logger/logger_mixins.dart';
import 'package:hack_ur_self/features/project/model/project_entity.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [ProjectEntries])
class AppDatabase extends _$AppDatabase with InfraLogger {
  AppDatabase({required QueryExecutor connection}) : super(connection);
  AppDatabase.connect() : super(openConnection());
  @override
  int get schemaVersion => 1;
}
