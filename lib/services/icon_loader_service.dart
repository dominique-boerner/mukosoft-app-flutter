import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const Color iconColor = Color(0xff374957);

/// IconLoaderService
///
/// This service loads our icons from the different icon catalogs.
class IconLoadService {
  static SvgPicture loadMedicationIcon({String icon = "", Color color = iconColor, double height = 40}) {
    const String assetUrl = "assets/icons/medication/";
    return SvgPicture.asset(assetUrl + icon, color: color, height: height);
  }

  static SvgPicture loadUiIcon({String icon = "", Color color = iconColor, double height = 30}) {
    return SvgPicture.asset(IconLoadService.getUiIconPath() + icon, color: color, height: height);
  }

  static String getUiIconPath() {
    return "assets/icons/ui/";
  }
}