import 'package:flutter_bloc/flutter_bloc.dart';

import '../interfaces.dart';
import '../types.dart';

class DictionaryState {
  const DictionaryState({this.input = '', this.output = const []});
  final String input;
  final Iterable<String> output;
}

class DictionaryCubit extends Cubit<DictionaryState> {
  DictionaryCubit(this.dictionaryService) : super(const DictionaryState());

  final DictionaryService dictionaryService;
  late Dictionary dictionary;

  void initialize(String path) => dictionaryService.initialize(path);

  void setInput(String input) => emit(DictionaryState(input: input));

  void getAllWords() => emit(DictionaryState(output: dictionaryService.getAllWords()));

  void getAnagrams() => emit(DictionaryState(output: dictionaryService.getAnagrams(state.input)));

  void getMatches() => emit(DictionaryState(output: dictionaryService.getMatches(state.input)));
}
