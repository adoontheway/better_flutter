import 'package:flutter/material.dart';
import 'package:better_flutter/theme/color_schemes.g.dart';

class AppTheme {
  static final ThemeData dark = ThemeData(colorScheme: darkColorScheme);
  // ThemeData.dark().copyWith(colorScheme: darkColorScheme);

  static final ThemeData light = ThemeData(colorScheme: lightColorScheme);
  // ThemeData.light().copyWith(colorScheme: lightColorScheme);
}
