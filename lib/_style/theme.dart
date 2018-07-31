import 'package:flutter/material.dart';
import '../_color/colors.dart';

final ThemeData _kShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: kShrineBrown900,
    primaryColor: kShrinePink100,
    buttonColor: kShrinePink100,
    scaffoldBackgroundColor: kShrineBackgroundWhite,
    cardColor: kShrineBackgroundWhite,
    textSelectionColor: kShrinePink100,
    errorColor: kShrineErrorRed,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
    //TODO: Add the text themes (103)
    //TODO: Add the icon themes (103)
    //TODO: Decorate the inputs (103)
  );
}