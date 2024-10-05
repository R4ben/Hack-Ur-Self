import 'package:hack_ur_self/core/database/database_provider.dart';
import 'package:hack_ur_self/core/directories/directories_provider.dart';
import 'package:hack_ur_self/features/project/data/project_data_source.dart';
import 'package:hack_ur_self/features/project/data/project_path_resolver.dart';
import 'package:hack_ur_self/features/project/data/project_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "project_data_provider.g.dart";

@Riverpod(keepAlive: true)
Future<ProjectRepository> projectRepository(ProjectRepositoryRef ref) async {
  final repo = ProjectRepositoryImpl(
    projectDataSource: ref.watch(projectDataSourceProvider),
    pathResolver: ref.watch(projectPathResolverProvider),
  );
  await repo.init().getOrElse((l) => throw l).run();
  return repo;
}

@Riverpod(keepAlive: true)
ProjectDataSource projectDataSource(ProjectDataSourceRef ref) {
  return ProjectDAO(ref.watch(appDatabaseProvider));
}

@Riverpod(keepAlive: true)
ProjectPathResolver projectPathResolver(ProjectPathResolverRef ref) {
  return ProjectPathResolver(
    ref.watch(appDirectoriesProvider).requireValue.workingDir,
  );
}
