import 'package:flutter/material.dart';
import 'package:new_app/src/constants/colors.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorTheme = const InputDecorationTheme(
      prefixIconColor: tSecondaryColor,
      border: OutlineInputBorder(),
      floatingLabelStyle: TextStyle(color: tSecondaryColor),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: tSecondaryColor)));

  static InputDecorationTheme darkInputDecorTheme = const InputDecorationTheme(
      prefixIconColor: tPrimaryColor,
      border: OutlineInputBorder(),
      floatingLabelStyle: TextStyle(color: tPrimaryColor),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: tPrimaryColor)));
}
