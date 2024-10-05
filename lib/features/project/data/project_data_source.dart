import 'package:drift/drift.dart';
import 'package:hack_ur_self/core/database/app_database.dart';
import 'package:hack_ur_self/core/database/tables/database_tables.dart';
import 'package:hack_ur_self/core/logger/logger_mixins.dart';
import 'package:hack_ur_self/features/project/model/project_sort.dart';

part "project_data_source.g.dart";

abstract interface class ProjectDataSource {
  Future<ProjectEntry?> getById(String id);
  Future<ProjectEntry?> getByName(String name);
  Stream<List<ProjectEntry>> watchAll(
      {required ProjectSort sort, required SortMode sortMode});
  Future<void> insert(ProjectEntriesCompanion entry);
  Future<void> edit(String id, ProjectEntriesCompanion entry);
  Future<void> deleteById(String id);
}

Map<SortMode, OrderingMode> orderMap = {
  SortMode.ascending: OrderingMode.asc,
  SortMode.descending: OrderingMode.desc,
};

@DriftAccessor(tables: [ProjectEntries])
class ProjectDAO extends DatabaseAccessor<AppDatabase>
    with _$ProjectDAOMixin, InfraLogger
    implements ProjectDataSource {
  ProjectDAO(super.db);
  @override
  Future<ProjectEntry?> getById(String id) async {
    return (projectEntries.select()..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  @override
  Future<ProjectEntry?> getByName(String name) async {
    return (select(projectEntries)
          ..where((tbl) => tbl.name.equals(name))
          ..limit(1))
        .getSingleOrNull();
  }

  @override
  Stream<List<ProjectEntry>> watchAll(
      {required ProjectSort sort, required SortMode sortMode}) {
    return (projectEntries.select()
          ..orderBy(
            [
              switch (sort) {
                ProjectSort.name => (tbl) => OrderingTerm(
                      expression: tbl.name,
                      mode: orderMap[sortMode]!,
                    ),
                ProjectSort.lastUpdate => (tbl) => OrderingTerm(
                      expression: tbl.lastUpdate,
                      mode: orderMap[sortMode]!,
                    ),
              },
            ],
          ))
        .watch();
  }

  @override
  Future<void> insert(ProjectEntriesCompanion entry) async {
    await transaction(() async {
      await into(projectEntries).insert(entry);
    });
  }

  @override
  Future<void> edit(String id, ProjectEntriesCompanion entry) async {
    await transaction(
      () async {
        await (update(projectEntries)..where((tbl) => tbl.id.equals(id)))
            .write(entry.copyWith(lastUpdate: Value(DateTime.now())));
      },
    );
  }

  @override
  Future<void> deleteById(String id) async {
    await transaction(
      () async {
        await (delete(projectEntries)..where((tbl) => tbl.id.equals(id))).go();
      },
    );
  }
}
