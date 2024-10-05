import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_ur_self/features/project/model/project_entity.dart';

part 'project_notifier_state.freezed.dart';

@freezed
class ProjectDetailsState with _$ProjectDetailsState {
  const ProjectDetailsState._();
  const factory ProjectDetailsState({
    required ProjectEntity project,
    @Default(false) bool isEditing,
    @Default(false) bool showErrorMessage,
    AsyncValue<void>? save,
    AsyncValue<void>? updateProject,
    AsyncValue<void>? delete,
  }) = _ProjectDeatilsState;
  bool get isBusy =>
      save is AsyncLoading ||
      delete is AsyncLoading ||
      updateProject is AsyncLoading;
}
