import 'package:flutter/material.dart';

import '../theme.dart';
import 'style_constants.dart';

// Styles
final AppStyle defaultAppStyle = AppStyle(colour: mainBackgroundColour);

const PageStyle defaultPageStyle = PageStyle(padding: containerPadding);

const TextStyle defaultTextStyle = TextStyle(
  fontFamily: fontFamily,
  fontSize: fontSize,
  color: textColour,
);

const TextWidgetStyle defaultTextWidgetStyle = TextWidgetStyle(
  textStyle: defaultTextStyle,
  padding: componentPadding,
  textAlign: TextAlign.left,
  backgroundColour: Colors.white,
);

final TextWidgetStyle panelHeaderTextWidgetStyle = defaultTextWidgetStyle.copyWith(
  textAlign: TextAlign.center,
  backgroundColour: panelHeaderColour,
);

final TextWidgetStyle panelBodyTextWidgetStyle = defaultTextWidgetStyle.copyWith(
  backgroundColour: panelBodyColour,
);

final ButtonWidgetStyle defaultButtonWidgetStyle = ButtonWidgetStyle(
  height: 50,
  padding: componentPadding,
  colour: panelHeaderColour,
  backgroundColour: panelBodyColour,
  iconColour: iconColour,
);

final ListWidgetStyle defaultListWidgetStyle = ListWidgetStyle(
  textWidgetStyle: panelBodyTextWidgetStyle,
  padding: listPadding,
);

final TextFieldWidgetStyle defaultTextFieldWidgetStyle = TextFieldWidgetStyle(
  textStyle: defaultTextStyle,
  padding: componentPadding,
  textAlign: TextAlign.left,
  colour: panelBodyColour,
);

final defaultShadowContainerWidgetStyle = ShadowContainerWidgetStyle(
  borderColour: panelBorderColour,
  borderRadius: BorderRadius.circular(4),
  shadowColour: Colors.black.withOpacity(0.3),
  spreadRadius: 6,
  blurRadius: 6,
  offset: const Offset(6, 6),
);
