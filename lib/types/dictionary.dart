import 'dart:collection';

class Dictionary({required final Map<String, Set<String>> _data}) {
  factory Dictionary.empty() => Dictionary(data: {});
  
  Map<String, Set<String>> get data => UnmodifiableMapView<String, Set<String>>(_data);

  bool get isInitialized => _data.isNotEmpty;
}
