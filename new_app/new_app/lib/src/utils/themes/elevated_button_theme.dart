import 'package:flutter/material.dart';
import 'package:new_app/src/constants/size.dart';

import '../../constants/colors.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
        foregroundColor: tWhiteColor,
        backgroundColor: tSecondaryColor,
        side: BorderSide(color: tSecondaryColor),
        padding: EdgeInsets.symmetric(vertical: tButtonHeight)),
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          foregroundColor: tSecondaryColor,
          backgroundColor: tWhiteColor,
          side: BorderSide(color: tSecondaryColor),
          padding: EdgeInsets.symmetric(vertical: tButtonHeight)));
}
