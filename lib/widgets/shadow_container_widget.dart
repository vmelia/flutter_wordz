import 'package:flutter/material.dart';
import '../theme.dart';

class ShadowContainerWidget extends StatelessWidget {
  const ShadowContainerWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: panelBorderColour),
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            spreadRadius: 6,
            blurRadius: 6,
            offset: const Offset(6, 6),
          ),
        ],
      ),
      child: child,
    );
  }
}
