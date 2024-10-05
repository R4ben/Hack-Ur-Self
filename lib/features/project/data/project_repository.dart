import 'package:fpdart/fpdart.dart';
import 'package:hack_ur_self/core/logger/logger_mixins.dart';
import 'package:hack_ur_self/features/project/data/project_data_mapper.dart';
import 'package:hack_ur_self/features/project/data/project_data_source.dart';
import 'package:hack_ur_self/features/project/data/project_path_resolver.dart';
import 'package:hack_ur_self/features/project/model/project_entity.dart';
import 'package:hack_ur_self/features/project/model/project_failure.dart';
import 'package:hack_ur_self/features/project/model/project_sort.dart';
import 'package:hack_ur_self/utils/exception_handler.dart';

abstract interface class ProjectRepository {
  TaskEither<ProjectFailures, Unit> init();
  TaskEither<ProjectFailures, ProjectEntity?> getById(String id);
  Future<ProjectEntity?> getByName(String name);
  Stream<Either<ProjectFailures, List<ProjectEntity>>> watchAll({
    ProjectSort sort = ProjectSort.lastUpdate,
    SortMode sortMode = SortMode.ascending,
  });
  TaskEither<ProjectFailures, Unit> add(ProjectEntity project);
  TaskEither<ProjectFailures, Unit> patch(ProjectEntity project);
  TaskEither<ProjectFailures, Unit> deleteById(String id);
}

class ProjectRepositoryImpl
    with ExceptionHandler, InfraLogger
    implements ProjectRepository {
  final ProjectDataSource projectDataSource;
  final ProjectPathResolver pathResolver;

  ProjectRepositoryImpl({
    required this.projectDataSource,
    required this.pathResolver,
  });
  @override
  TaskEither<ProjectFailures, Unit> add(ProjectEntity project) {
    return exceptionHandler(
      () async {
        await projectDataSource.insert(project.toEntry());
        return right(unit);
      },
      (error, stackTrace) {
        loggy.warning("error adding project", error, stackTrace);
        return ProjectUnexpectedFailures(error, stackTrace);
      },
    );
  }

  @override
  TaskEither<ProjectFailures, ProjectEntity?> getById(String id) {
    return TaskEither.tryCatch(
      () => projectDataSource.getById(id).then(
            (value) => value?.toEntity(),
          ),
      ProjectUnexpectedFailures.new,
    );
  }

  @override
  Future<ProjectEntity?> getByName(String name) async {
    return (await projectDataSource.getByName(name))?.toEntity();
  }

  @override
  TaskEither<ProjectFailures, Unit> init() {
    return exceptionHandler(
      () async {
        if (!await pathResolver.directory.exists()) {
          await pathResolver.directory.create(recursive: true);
        }
        return right(unit);
      },
      ProjectUnexpectedFailures.new,
    );
  }

  @override
  Stream<Either<ProjectFailures, List<ProjectEntity>>> watchAll(
      {ProjectSort sort = ProjectSort.lastUpdate,
      SortMode sortMode = SortMode.ascending}) {
    return projectDataSource
        .watchAll(sort: sort, sortMode: sortMode)
        .map((event) => event.map((e) => e.toEntity()).toList())
        .handleExceptions(ProjectUnexpectedFailures.new);
  }

  @override
  TaskEither<ProjectFailures, Unit> patch(ProjectEntity project) {
    return exceptionHandler(
      () async {
        loggy.debug('editing project [${project.name} (${project.id})]');
        await projectDataSource.edit(project.id, project.toEntry());
        return right(unit);
      },
      (error, stackTrace) {
        loggy.warning('error editing project', error, stackTrace);
        return ProjectUnexpectedFailures(error, stackTrace);
      },
    );
  }

  @override
  TaskEither<ProjectFailures, Unit> deleteById(String id) {
    return TaskEither.tryCatch(
      () async {
        await projectDataSource.deleteById(id);
        return unit;
      },
      ProjectUnexpectedFailures.new,
    );
  }
}
