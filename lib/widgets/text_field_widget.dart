import 'package:flutter/material.dart';

import '../theme.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key, required this.style, required this.onChanged});
  final TextFieldWidgetStyle style;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: style.padding,
      color: style.colour,
      child: TextField(onChanged: onChanged, style: style.textStyle, textAlign: style.textAlign),
    );
  }
}
