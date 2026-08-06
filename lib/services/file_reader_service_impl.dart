import 'package:flutter/services.dart';

import '../interfaces.dart';

class FileReaderServiceImpl extends FileReaderService {
  @override
  Future<String> readFile(String path) => rootBundle.loadString('assets/data/dictionary.txt');
}
