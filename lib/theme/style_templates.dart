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

// class TextFieldStyle {
//   const TextFieldStyle({
//     required this.textStyle,
//     required this.textAlign,
//     required this.backgroundColour,
//   });
//   final TextStyle textStyle;
//   final TextAlign textAlign;
//   final Color backgroundColour;
// }

// class TextFieldWidgetStyle {
//   const TextFieldWidgetStyle({
//     required this.textFieldStyle,
//     required this.textAlign,
//     required this.backgroundColour,
//   });
//   final TextFieldStyle textFieldStyle;
//   final TextAlign textAlign;
//   final Color backgroundColour;
// }

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
  const ListWidgetStyle({
    required this.textWidgetStyle,
    required this.padding,
  });
  final TextWidgetStyle textWidgetStyle;
  final EdgeInsets padding;
}
