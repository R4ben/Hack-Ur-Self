import 'package:freezed_annotation/freezed_annotation.dart';
part 'project_entity.freezed.dart';

enum ProjectType {
  life,
  anual,
  quarter,
  monthly,
  weekly,
  daily,
}

@freezed
sealed class ProjectEntity with _$ProjectEntity {
  const ProjectEntity._();
  const factory ProjectEntity.life({
    required String id,
    required String name,
    DateTime? lastUpdate,
    String? description,
    bool? completed,
  }) = LifeProject;

  const factory ProjectEntity.anual({
    required String id,
    required String name,
    String? description,
    DateTime? lastUpdate,
    bool? completed,
  }) = AnualProject;
  const factory ProjectEntity.quarter({
    required String id,
    String? parentId,
    required String name,
    DateTime? lastUpdate,
    String? description,
    bool? completed,
  }) = QuarterProject;
}
