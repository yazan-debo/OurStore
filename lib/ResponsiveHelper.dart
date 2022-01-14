// ignore_for_file: file_names
import 'dart:math';

import 'package:flutter/material.dart';

class ResponsiveHelper {
  static late double height;
  static late double width;
  static late double fontSize;

  ResponsiveHelper(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    fontSize = sqrt(height * height + width * width);
  }
  static double fromwidth(double perc) {
    return width * perc;
  }

  static double fromheight(double perc) {
    return height * perc;
  }

  static double fromfontSize(double perc) {
    return fontSize * perc;
  }
}
