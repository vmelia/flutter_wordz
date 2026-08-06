import '../types.dart';

abstract class DictionaryService {
  Future<Dictionary> loadDictionary(String path);

  Iterable<String> getAllWords(Dictionary dictionary);

  Iterable<String> getAnagrams(Dictionary dictionary, String text);

  Iterable<String> getMatching(Dictionary dictionary, String text);
}
