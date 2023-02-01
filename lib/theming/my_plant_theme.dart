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
      onPrimary: MyPlantColors.myPlantWhite,
      secondary: MyPlantColors.deco,
      onSecondary: MyPlantColors.myPlantWhite,
      error: Colors.red,
      onError: Colors.white,
      background: MyPlantColors.myPlantWhite,
      onBackground: MyPlantColors.greenSmoke,
      surface: MyPlantColors.greenSmoke,
      onSurface: MyPlantColors.myPlantWhite,
    );
  }

  static TextTheme textLightTheme() {
    return TextTheme(
      headline1: TextStyle(
        color: MyPlantColors.textBlack,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      headline2: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
      bodyText1: TextStyle(
        color: MyPlantColors.textBlack,
        fontSize: 11,
      ),
      button: TextStyle(
        color: MyPlantColors.myPlantWhite,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
