import 'package:flutter/material.dart';

class Style {
  static Color colorTitle = Colors.grey.shade800;
  static Color inputColor = Colors.grey.shade800;
  static Color colorTeal = Colors.teal.shade700;

  static const double neuDepthHigh = 4;
  static const double neuDepthDeep = -4;

  static const double fontSizeXXL = 2;
  static const double fontSizeXL = 1.5;
  static const double fontSizeMD = 1.2;
  static const double fontSizeSM = 1;
  static const double fontSizeXS = 0.8;

  static const double fontSizeTitle = Style.fontSizeXXL;
  static const double fontSizeText = Style.fontSizeMD;

  static const double paddingDefault = 10.0;
  static const double paddingNavItem = 14.0;

  static const EdgeInsets edgeInsetsAll = EdgeInsets.all(Style.paddingDefault);
  static const EdgeInsets edgeInsetsNavItem = EdgeInsets.all(paddingNavItem);
  static const EdgeInsets edgeInsetsX = EdgeInsets.fromLTRB(Style.paddingDefault, 0, Style.paddingDefault, 0);
  static const EdgeInsets edgeInsetsY = EdgeInsets.fromLTRB(0, Style.paddingDefault, 0, Style.paddingDefault);

  static double radiusDefault = 10.0;
  static double radiusXL = 20.0;
  static BorderRadius borderRadiusDefault = BorderRadius.all(Radius.circular(Style.radiusDefault));
  static BorderRadius borderRadiusXL = BorderRadius.all(Radius.circular(Style.radiusXL));

  static const double iconSizeButton = 40;

  static const double elevationFlat = 0;
  static const double elevationSM = 1;
  static const double elevationMD = 4;
  static const double elevationXL = 8;
}
