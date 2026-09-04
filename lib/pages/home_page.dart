import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: mainPadding,
      child: Column(
        children: [
          PanelWidget(
            title: 'Panel title 1',
            text: 'Panel text 1. Panel text 1. Panel text 1. Panel text 1. Panel text 1.',
            iconDataEnabled: Icons.mic,
            iconDataDisabled: Icons.mic_off,
            label: 'Panel 1 button',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
