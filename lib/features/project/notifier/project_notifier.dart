import 'package:fpdart/fpdart.dart';
import 'package:hack_ur_self/core/localization/translations.dart';
import 'package:hack_ur_self/core/logger/logger_mixins.dart';
import 'package:hack_ur_self/core/model/failures.dart';
import 'package:hack_ur_self/core/notification/in_app_notification_controller.dart';
import 'package:hack_ur_self/features/project/data/project_data_provider.dart';
import 'package:hack_ur_self/features/project/data/project_repository.dart';
import 'package:hack_ur_self/features/project/model/project_failure.dart';
import 'package:hack_ur_self/utils/riverpod_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
part 'project_notifier.g.dart';

@riverpod
class AddProject extends _$AddProject with AppLogger {
  CancelToken? _cancelToken;
  ProjectRepository get _projectRepo =>
      ref.read(projectRepositoryProvider).requireValue;
  @override
  AsyncValue<Unit?> build() {
    ref.disposeDelay(const Duration(minutes: 1));
    ref.onDispose(() {
      loggy.warning("disposing");
      _cancelToken?.cancel();
    });
    ref.listenSelf((previous, next) {
      final t = ref.read(translationsProvider);
      final notification = ref.read(inAppNotificationControllerProvider);
      switch (next) {
        case AsyncData(value: final _?):
          notification.showSuccessToast(t.lifeProjects.save.successMsg);

        case AsyncError(:final error):
          if (error case ProjectNotFoundFailures()) {
            notification.showErrorToast(t.failure.lifeProjects.notFound);
          } else {
            notification.showErrorDialog(
                t.presentError(error, action: t.lifeProjects.add.failureMsg));
          }
      }
    });
    return const AsyncData(null);
  }
}
