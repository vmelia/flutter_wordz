import 'package:flutter_bloc/flutter_bloc.dart';

import '../interfaces.dart';
import '../types.dart';

class DictionaryState {
  const DictionaryState({this.output = const []});

  final Iterable<String> output;
}

class DictionaryCubit extends Cubit<DictionaryState> {
  DictionaryCubit(this.dictionaryService) : super(const DictionaryState());
  final DictionaryService dictionaryService;

  Future<void> getAllWords(Dictionary dictionary) async =>
      emit(DictionaryState(output: dictionaryService.getAllWords(dictionary)));

  Future<void> getAnagrams(Dictionary dictionary, String text) async =>
      emit(DictionaryState(output: dictionaryService.getAnagrams(dictionary, text)));

  Future<void> getMatching(Dictionary dictionary, String text) async =>
      emit(DictionaryState(output: dictionaryService.getMatching(dictionary, text)));
}
