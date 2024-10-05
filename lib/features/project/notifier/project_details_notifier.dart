import 'package:dartx/dartx.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hack_ur_self/core/logger/logger_mixins.dart';
import 'package:hack_ur_self/features/project/data/project_data_provider.dart';
import 'package:hack_ur_self/features/project/data/project_repository.dart';
import 'package:hack_ur_self/features/project/model/project_entity.dart';
import 'package:hack_ur_self/features/project/model/project_failure.dart';
import 'package:hack_ur_self/features/project/notifier/project_notifier_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
part 'project_details_notifier.g.dart';

@riverpod
class ProjectDetailsNotifier extends _$ProjectDetailsNotifier with AppLogger {
  ProjectRepository get _projectsRepo =>
      ref.read(projectRepositoryProvider).requireValue;
  @override
  Future<ProjectDetailsState> build(
      {required String? id, required ProjectType type}) async {
    if (id == "new") {
      switch (type) {
        case ProjectType.life:
          return ProjectDetailsState(
              project: LifeProject(
            id: const Uuid().v4(),
            name: "",
            lastUpdate: DateTime.now(),
          ));
        case ProjectType.anual:
          return ProjectDetailsState(
              project: AnualProject(id: const Uuid().v4(), name: ''));
        case ProjectType.quarter:
          return ProjectDetailsState(
              project: AnualProject(id: const Uuid().v4(), name: ''));
        case ProjectType.monthly:
          return ProjectDetailsState(
              project: AnualProject(id: const Uuid().v4(), name: ''));
        case ProjectType.weekly:
          return ProjectDetailsState(
              project: AnualProject(id: const Uuid().v4(), name: ''));
        case ProjectType.daily:
          return ProjectDetailsState(
              project: AnualProject(id: const Uuid().v4(), name: ''));
      }
    }
    final failureOrProject = await _projectsRepo.getById(id!).run();
    return failureOrProject.match(
      (err) {
        loggy.warning("failed to load project");
        throw err;
      },
      (project) {
        if (project == null) {
          loggy.warning("profile with id:[$id] does not exist.");
          throw const ProjectNotFoundFailures();
        }
        _originalProject = project;
        return ProjectDetailsState(project: project, isEditing: true);
      },
    );
  }

  ProjectEntity? _originalProject;

  void setField({
    String? name,
    String? description,
  }) {
    if (state case AsyncData(:final value)) {
      state = AsyncData(value.copyWith(
        project: value.project.map(
          life: (life) => life.copyWith(
              name: name ?? life.name,
              description: description ?? life.description),
          anual: (anual) => anual.copyWith(
              name: name ?? anual.name,
              description: description ?? anual.description),
          quarter: (quarter) => quarter.copyWith(
              name: name ?? quarter.name,
              description: description ?? quarter.description),
        ),
      ));
    }
  }

  Future<void> save() async {
    if (state case AsyncData(:final value)) {
      final project = value.project;
      Either<ProjectFailures, Unit>? failureOrSucess;
      state = AsyncData(value.copyWith(save: const AsyncLoading()));
      switch (project) {
        case LifeProject():
          loggy.warning('saving life project name:[${project.name}]');
          if (project.name.isBlank) {
            loggy.debug('save life project: arguments invalid');
          } else if (value.isEditing) {
            loggy.debug('editing project');
            failureOrSucess = await _projectsRepo.patch(project).run();
          } else {
            loggy.debug('adding project');
            failureOrSucess = await _projectsRepo.add(project).run();
          }
        case AnualProject():
        // TODO: Handle this case.
        case QuarterProject():
        // TODO: Handle this case.
      }
      state = AsyncData(value.copyWith(
        save: failureOrSucess?.fold(
              (l) => AsyncError(l, StackTrace.current),
              (_) => const AsyncData(null),
            ) ??
            value.save,
        showErrorMessage: true,
      ));
    }
  }

  Future<void> delete() async {
    if (state case AsyncData(:final value)) {
      if (value.delete case AsyncLoading()) return;
      final project = value.project;
      state = AsyncData(
        value.copyWith(
          delete: await AsyncValue.guard(
            () async {
              await _projectsRepo.deleteById(project.id).run();
            },
          ),
        ),
      );
    }
  }
}
