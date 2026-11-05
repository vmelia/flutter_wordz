import 'package:flutter/material.dart';

class AppStyle {
  const AppStyle({required this.colour});
  final Color colour;
}

class PageStyle {
  const PageStyle({required this.padding});
  final EdgeInsets padding;
}

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
    required this.textStyle,
    required this.padding,
    required this.textAlign,
    required this.colour,
  });
  final TextStyle textStyle;
  final EdgeInsets padding;
  final TextAlign textAlign;
  final Color colour;
}

class ShadowContainerWidgetStyle {
  const ShadowContainerWidgetStyle({
    required this.borderColour,
    required this.borderRadius,
    required this.shadowColour,
    required this.spreadRadius,
    required this.blurRadius,
    required this.offset,
  });

  final Color borderColour;
  final BorderRadius borderRadius;
  final Color shadowColour;
  final double spreadRadius;
  final double blurRadius;
  final Offset offset;
}
