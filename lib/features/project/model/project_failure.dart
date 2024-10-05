import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_ur_self/core/model/failures.dart';
import 'package:hack_ur_self/gen/translations.g.dart';

part 'project_failure.freezed.dart';

@freezed
sealed class ProjectFailures with _$ProjectFailures, Failure {
  const ProjectFailures._();

  @With<UnexpectedFailure>()
  const factory ProjectFailures.unexpected([
    Object? error,
    StackTrace? stackTrace,
  ]) = ProjectUnexpectedFailures;
  const factory ProjectFailures.notFound() = ProjectNotFoundFailures;
  @override
  ({String type, String? message}) present(Translations t) {
    return switch (this) {
      ProjectUnexpectedFailures() => (
          type: t.failure.lifeProjects.unexpected,
          message: null,
        ),
      ProjectNotFoundFailures() => (
          type: t.failure.lifeProjects.notFound,
          message: null
        ),
    };
  }
}
