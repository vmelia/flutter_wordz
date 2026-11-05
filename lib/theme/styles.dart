import 'package:flutter/material.dart';

import '../theme.dart';

// Text
const String _fontFamily = 'Calibri';
const double _fontSize = 24.0;

// Colours
final Color mainBackgroundColour = Colors.grey[700]!;
final Color _panelHeaderColour = Colors.grey[800]!;
final Color _panelBodyColour = Colors.grey[850]!;
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

const EdgeInsets _componentPadding = EdgeInsets.all(6.0);
const EdgeInsets _listPadding = EdgeInsets.all(12.0);

// Styles
const TextStyle defaultTextStyle = TextStyle(
  fontFamily: _fontFamily,
  fontSize: _fontSize,
  color: _textColour,
);

const TextWidgetStyle _defaultTextWidgetStyle = TextWidgetStyle(
  textStyle: defaultTextStyle,
  padding: _componentPadding,
  textAlign: TextAlign.left,
  backgroundColour: Colors.white,
);

final TextWidgetStyle panelHeaderTextWidgetStyle = _defaultTextWidgetStyle.copyWith(
  textAlign: TextAlign.center,
  backgroundColour: _panelHeaderColour,
);

final TextWidgetStyle panelBodyTextWidgetStyle = _defaultTextWidgetStyle.copyWith(
  backgroundColour: _panelBodyColour,
);

final ButtonWidgetStyle defaultButtonWidgetStyle = ButtonWidgetStyle(
  height: 50,
  padding: _componentPadding,
  colour: _panelHeaderColour,
  backgroundColour: _panelBodyColour,
  iconColour: _iconColour,
);

final ListWidgetStyle defaultListWidgetStyle = ListWidgetStyle(
  textWidgetStyle: panelBodyTextWidgetStyle,
  padding: _listPadding,
);

final TextFieldWidgetStyle defaultTextFieldWidgetStyle = TextFieldWidgetStyle(
  textStyle: defaultTextStyle,
  padding: _componentPadding,
  textAlign: TextAlign.left,
  colour: _panelBodyColour,
);

final defaultShadowContainerWidgetStyle = ShadowContainerWidgetStyle(
  borderColour: panelBorderColour,
  borderRadius: BorderRadius.circular(4),
  shadowColour: Colors.black.withOpacity(0.3),
  spreadRadius: 6,
  blurRadius: 6,
  offset: const Offset(6, 6),
);
