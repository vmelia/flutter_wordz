import 'package:flutter/material.dart';

import '../theme.dart';

class ShadowContainerWidget extends StatelessWidget {
  const ShadowContainerWidget({super.key, required this.style, required this.child});
  final ShadowContainerWidgetStyle style;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: style.borderColour),
        borderRadius: style.borderRadius,
        boxShadow: [
          BoxShadow(
            color: style.shadowColour,
            spreadRadius: style.spreadRadius,
            blurRadius: style.blurRadius,
            offset: style.offset,
          ),
        ],
      ),
      child: child,
    );
  }
}
