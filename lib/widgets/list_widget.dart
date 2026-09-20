import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key, required this.items});
  final Iterable<String> items;

  @override
  Widget build(BuildContext context) => ListView(padding: const EdgeInsets.all(12), children: _buildList(items));
}

List<Widget> _buildList(Iterable<String> output) => output
    .map((s) => TextWidget(text: s, backgroundColour: panelBodyColour, textAlign: TextAlign.left))
    .toList();
