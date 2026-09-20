class Dictionary {
  Dictionary({required this.data});
  final Map<String, Set<String>> data;

  bool get isInitialized => data.isNotEmpty;
}
