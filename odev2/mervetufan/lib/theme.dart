import 'package:flutter/material.dart';
import 'package:mervetufan/util/color.dart';

class LightTheme {
  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
        buttonTheme: const ButtonThemeData(buttonColor: UtilityColor.grey),
        scaffoldBackgroundColor: UtilityColor.champagnePink, //Champagne Pink
        textTheme: ThemeData.light().textTheme.copyWith(
            subtitle2:
                const TextStyle(color: UtilityColor.isabelline)), //Isabelline
        appBarTheme: const AppBarTheme(
            backgroundColor: UtilityColor.paleSilver)); //Pale Silver
  }
}
