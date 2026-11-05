import 'package:flutter/material.dart';
import '../theme.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.textFieldWidgetStyle,
    required this.onChanged,
  });
  final TextFieldWidgetStyle textFieldWidgetStyle;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: textFieldWidgetStyle.padding,
      color: textFieldWidgetStyle.colour,
      child: TextField(
        onChanged: onChanged,
        style: textFieldWidgetStyle.textFieldStyle.textStyle,
        textAlign: textFieldWidgetStyle.textAlign,
      ),
    );
  }
}
