abstract class DictionaryService {
  Future<void> initialize(String path);

  Iterable<String> getAllWords();

  Iterable<String> getAnagrams(String text);

  Iterable<String> getMatches(String text);
}
