import 'package:hack_ur_self/core/database/app_database.dart';
import 'package:hack_ur_self/features/project/model/project_entity.dart';

extension ProjectEntryMapper on ProjectEntity {
  ProjectEntriesCompanion toEntry() {
    return switch (this) {
      LifeProject() => ProjectEntriesCompanion.insert(
          id: id,
          name: name,
          type: ProjectType.life,
          description: description ?? '',
          lastUpdate: DateTime.now(),
        ),
      AnualProject() => throw UnimplementedError(),
      QuarterProject() => throw UnimplementedError(),
    };
  }
}

extension ProjectEntityMapper on ProjectEntry {
  ProjectEntity toEntity() {
    return switch (type) {
      ProjectType.life =>
        LifeProject(id: id, name: name, lastUpdate: lastUpdate),
      ProjectType.anual => AnualProject(
          id: id,
          name: name,
          completed: false,
          lastUpdate: lastUpdate,
        ),
      // TODO: Handle this case.
      ProjectType.quarter => throw UnimplementedError(),
      // TODO: Handle this case.
      ProjectType.monthly => throw UnimplementedError(),
      // TODO: Handle this case.
      ProjectType.weekly => throw UnimplementedError(),
      // TODO: Handle this case.
      ProjectType.daily => throw UnimplementedError(),
    };
  }
}
