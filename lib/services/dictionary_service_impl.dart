import '../interfaces.dart';
import '../types.dart';

const String _wildcard = '_';

class DictionaryServiceImpl extends DictionaryService {
  DictionaryServiceImpl(this.fileReaderService, this.dictionarySerializerService);
  final FileReaderService fileReaderService;
  final DictionarySerializerService dictionarySerializerService;
  late Dictionary _dictionary = Dictionary.empty();

  @override
  Future<void> initialize(String path) async {
    if (!_dictionary.isInitialized) {
      final String text = await fileReaderService.readFile(path);
      _dictionary = dictionarySerializerService.deserialize(text);
    }
  }

  @override
  Iterable<String> getAllWords() sync* {
    for (final Set<String> list in _dictionary.data.values) {
      for (final word in list) {
        yield word;
      }
    }
  }

  @override
  Iterable<String> getAnagrams(String text) sync* {
    final String key = _alphabetize(text);
    if (_dictionary.data.containsKey(key)) {
      for (final String word in _dictionary.data[key]!) {
        yield word;
      }
    }
  }

  @override
  Iterable<String> getMatches(String text) sync* {
    final String lowerCaseText = text.toLowerCase();
    for (final String word in getAllWords()) {
      if (_matchesText(word, lowerCaseText)) {
        yield word;
      }
    }
  }

  String _alphabetize(String text) {
    final List<String> sorted = text.toLowerCase().split('').toList()..sort();
    return sorted.join();
  }

  bool _matchesText(String text, String pattern) {
    if (text.length != pattern.length) {
      return false;
    }

    if (text == pattern) {
      return true;
    }

    for (var i = 0; i < text.length; i++) {
      if (!matchesChar(text[i], pattern[i])) {
        return false;
      }
    }

    return true;
  }

  bool matchesChar(String text, String pattern) => pattern == _wildcard || text == pattern;
}
