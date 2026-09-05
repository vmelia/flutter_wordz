import '../types.dart';

abstract class DictionarySerializerService {
  Dictionary deserialize(String jsonString);
}
