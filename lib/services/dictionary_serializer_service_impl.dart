import 'dart:convert';

import '../interfaces.dart';
import '../types.dart';

class DictionarySerializerServiceImpl implements DictionarySerializerService {
  @override
  Dictionary deserialize(String jsonString) {
    final decoded = json.decode(jsonString) as Map<String, dynamic>;
    final Map<String, Set<String>> data = decodeThis(decoded);
    
    return Dictionary(data: data);
  }
}

Map<String, Set<String>> decodeThis(Map<String, dynamic> decoded) {
  return decoded.map((key, value) {
    final list = value as List<dynamic>;
    return MapEntry(key, Set<String>.from(list.map((e) => e.toString())));
  });
}
