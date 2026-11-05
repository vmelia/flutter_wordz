import 'package:flutter/material.dart';

import '../theme.dart';

const TextStyle defaultTextStyle = TextStyle(
  fontFamily: fontFamily,
  fontSize: fontSize,
  color: textColour,
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
  iconColour: iconColour,
);

// final ListWidgetStyle defaultListWidgetStyle = ListWidgetStyle(
//   textWidgetStyle: defaultTextWidgetStyle,
//   padding: const EdgeInsets.all(12),
//   backgroundColour: panelBodyColour,
// );
