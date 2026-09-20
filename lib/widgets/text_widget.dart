import 'package:flutter/material.dart';
import '../theme.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    required this.backgroundColour,
    required this.textAlign,
  });
  final String text;
  final Color backgroundColour;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: componentPadding,
      color: backgroundColour,
      child: Text(
        text,
        style: themeTextStyle,
        textAlign: textAlign,
      ),
    );
  }
}
