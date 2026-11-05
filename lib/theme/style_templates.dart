import 'package:flutter/material.dart';

class TextWidgetStyle {
  const TextWidgetStyle({
    required this.textStyle,
    required this.padding,
    required this.textAlign,
    required this.backgroundColour,
  });

  TextWidgetStyle copyWith({
    TextStyle? textStyle,
    EdgeInsets? padding,
    TextAlign? textAlign,
    Color? backgroundColour,
  }) {
    return TextWidgetStyle(
      textStyle: textStyle ?? this.textStyle,
      padding: padding ?? this.padding,
      textAlign: textAlign ?? this.textAlign,
      backgroundColour: backgroundColour ?? this.backgroundColour,
    );
  }

  final TextStyle textStyle;
  final EdgeInsets padding;
  final TextAlign textAlign;
  final Color backgroundColour;
}

class ButtonWidgetStyle {
  const ButtonWidgetStyle({
    required this.height,
    required this.padding,
    required this.colour,
    required this.backgroundColour,
    required this.iconColour,
  });
  final double height;
  final EdgeInsets padding;
  final Color colour;
  final Color backgroundColour;
  final Color iconColour;
}

class ListWidgetStyle {
  const ListWidgetStyle({required this.textWidgetStyle, required this.padding});
  final TextWidgetStyle textWidgetStyle;
  final EdgeInsets padding;
}

class TextFieldWidgetStyle {
  const TextFieldWidgetStyle({
    required this.padding,
    required this.textAlign,
    required this.colour,
  });
  final EdgeInsets padding;
  final TextAlign textAlign;
  final Color colour;
}

// class ShadowContainerWidgetStyle {
//   const ShadowContainerStyle({
//     required this.borderColour,
//     required this.borderRadius,
//     required this.boxShadow,
//   });
//   final Color borderColour;
//   final double borderRadius;
//   final List<BoxShadow> boxShadow;
// }
