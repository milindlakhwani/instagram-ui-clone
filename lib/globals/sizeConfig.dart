import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double horizontalBlockSize;
  static double verticalBlockSize;
  static double textScaleFactor;
  static double availableHeight;

  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    textScaleFactor = mediaQueryData.textScaleFactor;
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
    horizontalBlockSize = screenWidth / 100;
    verticalBlockSize = screenHeight / 100;
    availableHeight = screenHeight - 56 - mediaQueryData.padding.top;
  }
}
