import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state.dart';
import '../theme.dart';
import '../widgets.dart';

class OutputPanelWidget extends StatelessWidget {
  const OutputPanelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DictionaryCubit, DictionaryState>(
      builder: (context, state) =>
          ShadowContainerWidget(child: _OutputPanelWidgetView(state: state)),
    );
  }
}

class _OutputPanelWidgetView extends StatelessWidget {
  const _OutputPanelWidgetView({required this.state});
  final DictionaryState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextWidget(text: 'Results', style: panelHeaderTextWidgetStyle),
        Expanded(
          child: ListWidget(listWidgetStyle: defaultListWidgetStyle, items: state.output),
        ),
      ],
    );
  }
}
