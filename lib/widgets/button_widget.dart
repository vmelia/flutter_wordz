import 'package:flutter/material.dart';

import '../theme.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.style,
    required this.iconData,
    required this.onPressed,
  });
  final ButtonWidgetStyle style;
  final IconData iconData;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: style.height,
      color: style.colour,
      padding: style.padding,
      child: Stack(
        children: [
          FloatingActionButton(
            onPressed: onPressed,
            backgroundColor: style.backgroundColour,
            child: Icon(iconData, color: style.iconColour),
          ),
        ],
      ),
    );
  }
}
