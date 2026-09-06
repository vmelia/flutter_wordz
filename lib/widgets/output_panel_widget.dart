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
      builder: (context, state) {
        return _OutputPanelWidgetView(state: state);
      },
    );
  }
}

class _OutputPanelWidgetView extends StatelessWidget {
  const _OutputPanelWidgetView({required this.state});
  final DictionaryState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: panelBorderColour),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            spreadRadius: 6,
            blurRadius: 6,
            offset: const Offset(8, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextWidget(
            text: 'Results',
            backgroundColour: panelHeaderColour,
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: TextWidget(
              text: state.output.join('\n'),
              backgroundColour: panelBodyColour,
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
