import 'dart:io';
import 'package:path/path.dart' as p;

class ProjectPathResolver {
  const ProjectPathResolver(this._workingDir);

  final Directory _workingDir;

  Directory get directory => Directory(p.join(_workingDir.path, "configs"));

  File file(String fileName) {
    return File(p.join(directory.path, "$fileName.json"));
  }

  File tempFile(String fileName) => file("$fileName.temp");
}
