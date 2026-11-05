import 'package:flutter/material.dart';

import '../theme.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.style, required this.text});
  final TextWidgetStyle style;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: componentPadding,
      color: style.backgroundColour,
      child: Text(text, style: style.textStyle, textAlign: style.textAlign),
    );
  }
}
