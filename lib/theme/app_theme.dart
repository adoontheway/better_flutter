import 'package:flutter/material.dart';
import 'package:getwidget_test/theme/color_schemes.g.dart';

class AppTheme {
  static final ThemeData dark =
      ThemeData.dark().copyWith(colorScheme: darkColorScheme);

  static final ThemeData light =
      ThemeData.light().copyWith(colorScheme: lightColorScheme);
}
