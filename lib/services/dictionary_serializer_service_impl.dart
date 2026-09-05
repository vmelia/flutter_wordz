import 'dart:convert';

import '../interfaces.dart';
import '../types.dart';

class DictionarySerializerServiceImpl implements DictionarySerializerService {
  @override
  Dictionary deserialize(String jsonString) {
    final decoded = json.decode(jsonString) as Map<String, dynamic>;

    return decoded.map((key, value) {
      final list = value as List<dynamic>;
      return MapEntry(key, Set<String>.from(list.map((e) => e.toString())));
    });
  }
}
