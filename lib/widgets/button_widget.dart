import 'package:flutter/material.dart';
import '../theme.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.iconData,
    required this.onPressed,
  });
  final IconData iconData;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: panelHeaderColour,
      padding: componentPadding,
      child: Stack(
        children: [
          FloatingActionButton(
            onPressed: onPressed,
            backgroundColor: panelBodyColour,
            child: Icon(iconData, color: iconColour),
          ),
        ],
      ),
    );
  }
}
