import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key, required this.style, required this.items});
  final ListWidgetStyle style;
  final Iterable<String> items;

  @override
  Widget build(BuildContext context) =>
      ListView(padding: style.padding, children: _buildList(items));

  List<Widget> _buildList(Iterable<String> output) =>
      output.map((s) => TextWidget(text: s, style: style.textWidgetStyle)).toList();
}
