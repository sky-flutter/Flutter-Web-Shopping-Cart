import 'package:flutter_web/material.dart';

class ResponsiveLayout {
  static bool isSmallScreen(context) {
    return MediaQuery.of(context).size.width <= 800;
  }

  static bool isMediumScreen(context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isLargeScreen(context) {
    return MediaQuery.of(context).size.width > 800;
  }
}