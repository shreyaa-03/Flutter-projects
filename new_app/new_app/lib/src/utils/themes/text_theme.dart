import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/src/constants/colors.dart';

class TTextTheme {
  static TextTheme lightTexttheme = TextTheme(
      headline1: GoogleFonts.montserrat(
          color: tDarkColor, fontWeight: FontWeight.w800, fontSize: 34),
      headline4: GoogleFonts.montserrat(
          color: tDarkColor, fontWeight: FontWeight.bold, fontSize: 86),
      headline2: GoogleFonts.poppins(
          color: tDarkColor, fontWeight: FontWeight.w700, fontSize: 30),
      headline3: GoogleFonts.poppins(
          color: tDarkColor, fontWeight: FontWeight.w700, fontSize: 18),
      subtitle1: GoogleFonts.poppins(color: Colors.black54, fontSize: 18),
      subtitle2: GoogleFonts.poppins(
          color: Colors.black54, fontSize: 18, fontWeight: FontWeight.w500),
      bodyText1: GoogleFonts.poppins(
          fontWeight: FontWeight.normal, fontSize: 18, color: tDarkColor));
  static TextTheme darkTexttheme = TextTheme(
    headline1: GoogleFonts.montserrat(
        color: Colors.white, fontWeight: FontWeight.w800, fontSize: 34),
    headline4: GoogleFonts.montserrat(
        color: tWhiteColor, fontWeight: FontWeight.bold, fontSize: 80),
    bodyText1: GoogleFonts.poppins(
        color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
    headline2: GoogleFonts.poppins(
        color: tWhiteColor, fontWeight: FontWeight.w700, fontSize: 30),
    headline3: GoogleFonts.poppins(
        color: tWhiteColor, fontWeight: FontWeight.w700, fontSize: 18),
    subtitle1: GoogleFonts.poppins(color: Colors.white60, fontSize: 18),
    subtitle2: GoogleFonts.poppins(
        color: Colors.white60, fontSize: 18, fontWeight: FontWeight.w500),
  );
}
