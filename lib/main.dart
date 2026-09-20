import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'interfaces.dart';
import 'pages.dart';
import 'services.dart';
import 'state.dart';
import 'theme.dart';

const String PATH = 'assets/data/dictionary.json';

void main() {
  GetIt.I.registerSingleton<FileReaderService>(FileReaderServiceImpl());
  GetIt.I.registerSingleton<DictionarySerializerService>(DictionarySerializerServiceImpl());
  GetIt.I.registerSingleton<DictionaryService>(DictionaryServiceImpl(GetIt.I(), GetIt.I()));

  GetIt.I.registerSingleton<DictionaryCubit>(DictionaryCubit(GetIt.I()));

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final DictionaryCubit dictionaryCubit = GetIt.I<DictionaryCubit>();
    dictionaryCubit.initialize(PATH);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: mainBackgroundColour),
      home: const MainScaffoldWidget(),
    );
  }
}

class MainScaffoldWidget extends StatelessWidget {
  const MainScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainBackgroundColour,
        title: const Center(
          child: Text('Anagram Finder', style: TextStyle(color: iconColour)),
        ),
        elevation: 0,
      ),
      body: const SafeArea(child: HomePage()),
    );
  }
}
