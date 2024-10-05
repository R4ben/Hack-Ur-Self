import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_ur_self/core/model/environment.dart';

part 'app_info_entity.freezed.dart';

@freezed
class AppInfoEntity with _$AppInfoEntity {
  const AppInfoEntity._();

  const factory AppInfoEntity({
    required String name,
    required String version,
    required String buildNumber,
    required Release release,
    required String operatingSystem,
    required String operatingSystemVersion,
    required Environment environment,
  }) = _AppInfoEntity;
  String get presentVersion => environment == Environment.prod
      ? version
      : "$version ${environment.name}";
  String format() => '''
$name v$version ($buildNumber) [(${environment.name})]
${release.name} release
$operatingSystem [$operatingSystemVersion]
  ''';
}
