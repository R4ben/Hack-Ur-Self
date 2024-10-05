// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ProjectEntriesTable extends ProjectEntries
    with TableInfo<$ProjectEntriesTable, ProjectEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProjectEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name =
      GeneratedColumn<String>('name', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<ProjectType, String> type =
      GeneratedColumn<String>('type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<ProjectType>($ProjectEntriesTable.$convertertype);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdateMeta =
      const VerificationMeta('lastUpdate');
  @override
  late final GeneratedColumn<DateTime> lastUpdate = GeneratedColumn<DateTime>(
      'last_update', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, type, description, lastUpdate];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'project_entries';
  @override
  VerificationContext validateIntegrity(Insertable<ProjectEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('last_update')) {
      context.handle(
          _lastUpdateMeta,
          lastUpdate.isAcceptableOrUnknown(
              data['last_update']!, _lastUpdateMeta));
    } else if (isInserting) {
      context.missing(_lastUpdateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ProjectEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProjectEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      type: $ProjectEntriesTable.$convertertype.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      lastUpdate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_update'])!,
    );
  }

  @override
  $ProjectEntriesTable createAlias(String alias) {
    return $ProjectEntriesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<ProjectType, String, String> $convertertype =
      const EnumNameConverter<ProjectType>(ProjectType.values);
}

class ProjectEntry extends DataClass implements Insertable<ProjectEntry> {
  final String id;
  final String name;
  final ProjectType type;
  final String description;
  final DateTime lastUpdate;
  const ProjectEntry(
      {required this.id,
      required this.name,
      required this.type,
      required this.description,
      required this.lastUpdate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    {
      map['type'] =
          Variable<String>($ProjectEntriesTable.$convertertype.toSql(type));
    }
    map['description'] = Variable<String>(description);
    map['last_update'] = Variable<DateTime>(lastUpdate);
    return map;
  }

  ProjectEntriesCompanion toCompanion(bool nullToAbsent) {
    return ProjectEntriesCompanion(
      id: Value(id),
      name: Value(name),
      type: Value(type),
      description: Value(description),
      lastUpdate: Value(lastUpdate),
    );
  }

  factory ProjectEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProjectEntry(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      type: $ProjectEntriesTable.$convertertype
          .fromJson(serializer.fromJson<String>(json['type'])),
      description: serializer.fromJson<String>(json['description']),
      lastUpdate: serializer.fromJson<DateTime>(json['lastUpdate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'type': serializer
          .toJson<String>($ProjectEntriesTable.$convertertype.toJson(type)),
      'description': serializer.toJson<String>(description),
      'lastUpdate': serializer.toJson<DateTime>(lastUpdate),
    };
  }

  ProjectEntry copyWith(
          {String? id,
          String? name,
          ProjectType? type,
          String? description,
          DateTime? lastUpdate}) =>
      ProjectEntry(
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
        description: description ?? this.description,
        lastUpdate: lastUpdate ?? this.lastUpdate,
      );
  ProjectEntry copyWithCompanion(ProjectEntriesCompanion data) {
    return ProjectEntry(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      type: data.type.present ? data.type.value : this.type,
      description:
          data.description.present ? data.description.value : this.description,
      lastUpdate:
          data.lastUpdate.present ? data.lastUpdate.value : this.lastUpdate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProjectEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('description: $description, ')
          ..write('lastUpdate: $lastUpdate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, type, description, lastUpdate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProjectEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.type == this.type &&
          other.description == this.description &&
          other.lastUpdate == this.lastUpdate);
}

class ProjectEntriesCompanion extends UpdateCompanion<ProjectEntry> {
  final Value<String> id;
  final Value<String> name;
  final Value<ProjectType> type;
  final Value<String> description;
  final Value<DateTime> lastUpdate;
  final Value<int> rowid;
  const ProjectEntriesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.description = const Value.absent(),
    this.lastUpdate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProjectEntriesCompanion.insert({
    required String id,
    required String name,
    required ProjectType type,
    required String description,
    required DateTime lastUpdate,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        type = Value(type),
        description = Value(description),
        lastUpdate = Value(lastUpdate);
  static Insertable<ProjectEntry> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? type,
    Expression<String>? description,
    Expression<DateTime>? lastUpdate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (description != null) 'description': description,
      if (lastUpdate != null) 'last_update': lastUpdate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProjectEntriesCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<ProjectType>? type,
      Value<String>? description,
      Value<DateTime>? lastUpdate,
      Value<int>? rowid}) {
    return ProjectEntriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      description: description ?? this.description,
      lastUpdate: lastUpdate ?? this.lastUpdate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(
          $ProjectEntriesTable.$convertertype.toSql(type.value));
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (lastUpdate.present) {
      map['last_update'] = Variable<DateTime>(lastUpdate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProjectEntriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('description: $description, ')
          ..write('lastUpdate: $lastUpdate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProjectEntriesTable projectEntries = $ProjectEntriesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [projectEntries];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$ProjectEntriesTableCreateCompanionBuilder = ProjectEntriesCompanion
    Function({
  required String id,
  required String name,
  required ProjectType type,
  required String description,
  required DateTime lastUpdate,
  Value<int> rowid,
});
typedef $$ProjectEntriesTableUpdateCompanionBuilder = ProjectEntriesCompanion
    Function({
  Value<String> id,
  Value<String> name,
  Value<ProjectType> type,
  Value<String> description,
  Value<DateTime> lastUpdate,
  Value<int> rowid,
});

class $$ProjectEntriesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ProjectEntriesTable> {
  $$ProjectEntriesTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<ProjectType, ProjectType, String> get type =>
      $state.composableBuilder(
          column: $state.table.type,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get lastUpdate => $state.composableBuilder(
      column: $state.table.lastUpdate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ProjectEntriesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ProjectEntriesTable> {
  $$ProjectEntriesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get lastUpdate => $state.composableBuilder(
      column: $state.table.lastUpdate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$ProjectEntriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProjectEntriesTable,
    ProjectEntry,
    $$ProjectEntriesTableFilterComposer,
    $$ProjectEntriesTableOrderingComposer,
    $$ProjectEntriesTableCreateCompanionBuilder,
    $$ProjectEntriesTableUpdateCompanionBuilder,
    (
      ProjectEntry,
      BaseReferences<_$AppDatabase, $ProjectEntriesTable, ProjectEntry>
    ),
    ProjectEntry,
    PrefetchHooks Function()> {
  $$ProjectEntriesTableTableManager(
      _$AppDatabase db, $ProjectEntriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ProjectEntriesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ProjectEntriesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<ProjectType> type = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<DateTime> lastUpdate = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProjectEntriesCompanion(
            id: id,
            name: name,
            type: type,
            description: description,
            lastUpdate: lastUpdate,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            required ProjectType type,
            required String description,
            required DateTime lastUpdate,
            Value<int> rowid = const Value.absent(),
          }) =>
              ProjectEntriesCompanion.insert(
            id: id,
            name: name,
            type: type,
            description: description,
            lastUpdate: lastUpdate,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ProjectEntriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ProjectEntriesTable,
    ProjectEntry,
    $$ProjectEntriesTableFilterComposer,
    $$ProjectEntriesTableOrderingComposer,
    $$ProjectEntriesTableCreateCompanionBuilder,
    $$ProjectEntriesTableUpdateCompanionBuilder,
    (
      ProjectEntry,
      BaseReferences<_$AppDatabase, $ProjectEntriesTable, ProjectEntry>
    ),
    ProjectEntry,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProjectEntriesTableTableManager get projectEntries =>
      $$ProjectEntriesTableTableManager(_db, _db.projectEntries);
}
