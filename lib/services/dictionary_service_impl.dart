import '../interfaces.dart';
import '../types.dart';

const String _wildcard = '_';

class DictionaryServiceImpl extends DictionaryService {
  DictionaryServiceImpl(this.fileReaderService, this.dictionarySerializerService);
  final FileReaderService fileReaderService;
  final DictionarySerializerService dictionarySerializerService;

  @override
  Future<Dictionary> loadDictionary(String path) async {
    final text = await fileReaderService.readFile(path);
    return dictionarySerializerService.deserialize(text);
  }

  @override
  Iterable<String> getAllWords(Dictionary dictionary) sync* {
    for (var list in dictionary.values) {
      for (var word in list) {
        yield word;
      }
    }
  }

  @override
  Iterable<String> getAnagrams(Dictionary dictionary, String text) sync* {
    var key = _alphabetize(text);
    if (dictionary.containsKey(key)) {
      for (var word in dictionary[key]!) {
        yield word;
      }
    }
  }

  @override
  Iterable<String> getMatching(Dictionary dictionary, String text) sync* {
    var lowerCaseText = text.toLowerCase();
    //var possibleKeys = dictionary.keys.where((k) => k.length == key.length);

    for (var key in dictionary.keys) {
      for (var word in dictionary[lowerCaseText]!) {
        if (_matchesText(word, key)) {
          yield word;
        }
      }
    }
  }

  String _alphabetize(String text) {
    var sorted = text.toLowerCase().split('').toList()..sort();
    return sorted.join();
  }

  bool _matchesText(String text, String pattern) {
    if (text == pattern) {
      return true;
    }

    for (var i = 0; i < text.length; i++) {
      if (pattern[i] != _wildcard[0] && text[i] != pattern[i]) {
        return false;
      }
    }

    return true;
  }
}
