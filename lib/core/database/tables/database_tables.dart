import 'package:drift/drift.dart';
import 'package:hack_ur_self/features/project/model/project_entity.dart';

@DataClassName('ProjectEntry')
class ProjectEntries extends Table {
  TextColumn get id => text()();
  TextColumn get name => text().withLength(min: 1)();
  TextColumn get type => textEnum<ProjectType>()();
  TextColumn get description => text()();
  DateTimeColumn get lastUpdate => dateTime()();
}
