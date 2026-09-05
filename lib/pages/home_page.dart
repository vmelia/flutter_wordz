import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../state.dart';
import '../theme.dart';
import '../widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final DictionaryCubit dictionaryCubit = GetIt.I<DictionaryCubit>();
    return BlocProvider.value(
      value: dictionaryCubit,
      child: BlocBuilder<DictionaryCubit, DictionaryState>(
        builder: (context, state) => _HomePageView(state: state),
      ),
    );
  }
}

class _HomePageView extends StatelessWidget {
  const _HomePageView({required this.state});
  final DictionaryState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: mainPadding,
          child: const Column(children: [InputPanelWidget(text: '')]),
        ),
        Container(
          padding: mainPadding,
          child: const Column(children: [OutputPanelWidget()]),
        ),
      ],
    );
  }
}
