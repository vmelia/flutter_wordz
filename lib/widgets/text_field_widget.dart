import 'package:flutter/material.dart';
import '../theme.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.onChanged,
    required this.backgroundColour,
    required this.textAlign,
  });
  final ValueChanged<String>? onChanged;
  final Color backgroundColour;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: componentPadding,
      color: backgroundColour,
      child: TextField(
        onChanged: onChanged,
        style: themeTextStyle,
        textAlign: textAlign,
      ),
    );
  }
}
