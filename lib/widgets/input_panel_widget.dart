import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../state.dart';
import '../theme.dart';
import '../widgets.dart';

class InputPanelWidget extends StatelessWidget {
  const InputPanelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final DictionaryCubit dictionaryCubit = GetIt.I<DictionaryCubit>();
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
            text: 'Text',
            backgroundColour: panelHeaderColour,
            textAlign: TextAlign.center,
          ),
          TextFieldWidget(
            onChanged: (value) => dictionaryCubit.setInput(value),
            backgroundColour: panelBodyColour,
            textAlign: TextAlign.left,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ButtonWidget(
                label: 'Anagrams',
                iconData: Icons.search,
                onPressed: () => dictionaryCubit.getAnagrams(),
              ),
              ButtonWidget(
                label: 'Matches',
                iconData: Icons.pattern,
                onPressed: () => dictionaryCubit.getMatches(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
