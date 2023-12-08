import 'package:flutter/material.dart';
import 'package:new_app/src/constants/colors.dart';
import 'package:new_app/src/utils/themes/elevated_button_theme.dart';
import 'package:new_app/src/utils/themes/outlined_button_theme.dart';
import 'package:new_app/src/utils/themes/text_field_theme.dart';
import 'package:new_app/src/utils/themes/text_theme.dart';

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TTextTheme.lightTexttheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorTheme,
      // scaffoldBackgroundColor: tPrimaryColor,
      primaryColor: Colors.grey.shade200,
      hintColor: tDarkColor);
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: TTextTheme.darkTexttheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorTheme,
      primaryColor: Colors.black26,
      hintColor: Colors.white30);
}
