import 'package:flutter_bloc/flutter_bloc.dart';

import '../interfaces.dart';

class DictionaryState {
  const DictionaryState({required this.input, required this.output});
  const DictionaryState.initialize() : input = '', output = const [];

  final String input;
  final Iterable<String> output;
}

class DictionaryCubit extends Cubit<DictionaryState> {
  DictionaryCubit(this.dictionaryService) : super(const DictionaryState.initialize());
  final DictionaryService dictionaryService;

  Future<void> initialize(String path) async => dictionaryService.initialize(path);

  void setInput(String input) => emit(DictionaryState(input: input, output: {}));

  void getAllWords() =>
      emit(DictionaryState(input: state.input, output: dictionaryService.getAllWords()));

  void getAnagrams() =>
      emit(DictionaryState(input: state.input, output: dictionaryService.getAnagrams(state.input)));

  void getMatches() =>
      emit(DictionaryState(input: state.input, output: dictionaryService.getMatches(state.input)));
}
