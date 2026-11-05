import 'package:flutter/material.dart';

import '../theme.dart';

// Text
const String _fontFamily = 'Calibri';
const double _fontSize = 24.0;

// Colours
final Color mainBackgroundColour = Colors.grey[700]!;
final Color panelHeaderColour = Colors.grey[800]!;
final Color panelBodyColour = Colors.grey[850]!;
final Color panelBorderColour = Colors.grey[500]!;
const Color _textColour = Colors.white;
const Color _iconColour = Colors.blue;

// Padding
const double _horizontalPanelSpacing = 24.0;
const double _verticalPanelSpacing = 8.0;
const EdgeInsets containerPadding = EdgeInsets.symmetric(
  vertical: _verticalPanelSpacing,
  horizontal: _horizontalPanelSpacing,
);

const EdgeInsets panelPadding = EdgeInsets.all(8.0);
const EdgeInsets componentPadding = EdgeInsets.all(6.0);
const EdgeInsets listPadding = EdgeInsets.all(12.0);

// Styles
const TextStyle defaultTextStyle = TextStyle(
  fontFamily: _fontFamily,
  fontSize: _fontSize,
  color: _textColour,
);

const TextWidgetStyle _defaultTextWidgetStyle = TextWidgetStyle(
  textStyle: defaultTextStyle,
  padding: componentPadding,
  textAlign: TextAlign.left,
  backgroundColour: Colors.white,
);

final TextWidgetStyle panelHeaderTextWidgetStyle = _defaultTextWidgetStyle.copyWith(
  textAlign: TextAlign.center,
  backgroundColour: panelHeaderColour,
);

final TextWidgetStyle panelBodyTextWidgetStyle = _defaultTextWidgetStyle.copyWith(
  backgroundColour: panelBodyColour,
);

final ButtonWidgetStyle defaultButtonWidgetStyle = ButtonWidgetStyle(
  height: 50,
  padding: componentPadding,
  colour: panelHeaderColour,
  backgroundColour: panelBodyColour,
  iconColour: _iconColour,
);

final ListWidgetStyle defaultListWidgetStyle = ListWidgetStyle(
  textWidgetStyle: panelBodyTextWidgetStyle,
  padding: listPadding,
);

const TextFieldStyle defaultTextFieldStyle = TextFieldStyle(
  textStyle: defaultTextStyle,
  textAlign: TextAlign.left,
  colour: _textColour,
);

final TextFieldWidgetStyle defaultTextFieldWidgetStyle = TextFieldWidgetStyle(
  textFieldStyle: defaultTextFieldStyle,
  padding: componentPadding,
  textAlign: TextAlign.left,
  colour: panelBodyColour,
);
