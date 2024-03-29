import 'package:flutter/material.dart';
import 'package:my_plant/constants/my_plant_colors.dart';

class MyPlantTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      textTheme: textLightTheme(),
      colorScheme: colorThemeLight(),
      scaffoldBackgroundColor: Colors.white,
    );
  }

  static ColorScheme colorThemeLight() {
    return ColorScheme(
      brightness: Brightness.light,
      primary: MyPlantColors.greenSmoke,
      onPrimary: MyPlantColors.surfaceWhite,
      secondary: MyPlantColors.deco,
      onSecondary: MyPlantColors.surfaceWhite,
      error: Colors.red,
      onError: Colors.white,
      background: MyPlantColors.surfaceWhite,
      onBackground: MyPlantColors.greenSmoke,
      surface: MyPlantColors.greenSmoke,
      onSurface: MyPlantColors.surfaceWhite,
    );
  }

  static TextTheme textLightTheme() {
    return TextTheme(
      headline1: TextStyle(
        color: MyPlantColors.textBlack,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(
        color: MyPlantColors.textBlack,
        fontSize: 11,
      ),
      button: TextStyle(
        color: MyPlantColors.surfaceWhite,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
