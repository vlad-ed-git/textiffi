import 'dart:io';

import 'package:path/path.dart';

Future<String> createFileAndReturnPathAtDir(
  String dirPath,
  String fileName,
) async {
  final dir = Directory(dirPath);
  await dir.create(recursive: true);

  var path = join(dirPath, fileName);
  var file = File(path);
  if (!file.existsSync()) {
    await file.create(recursive: true);
  }
  return path;
}
