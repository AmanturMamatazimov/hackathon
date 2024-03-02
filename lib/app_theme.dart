import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color notWhite = Color(0xFFD7C4EF); // Light lavender
  static const Color nearlyWhite = Color(0xFFE6E6FA); // Very light lavender
  static const Color white = Color(0xFFF5F5FF); // White
  static const Color nearlyBlack = Color(0xFF3F2A5C); // Dark purple
  static const Color grey = Color(0xFF725A9F); // Medium purple
  static const Color dark_grey = Color(0xFF5E419A); // Darker purple

  static const Color darkText = Color(0xFF412B81); // Deep purple
  static const Color darkerText = Color(0xFF5837A2); // Even deeper purple
  static const Color lightText = Color(0xFF8D71C8); // Light purple
  static const Color deactivatedText = Color(0xFFA5A5A5); // Lighter gray
  static const Color dismissibleBackground = Color(0xFF7C63B6); // Plum purple
  static const Color chipBackground = Color(0xFFEFEBFF); // Light bluish purple
  static const Color spacer = Color(0xFFF2F2F2); // White (unchanged)

  static const String fontName = 'WorkSans';

  static const TextTheme textTheme = TextTheme(
    headline4: display1,
    headline5: headline,
    headline6: title,
    subtitle2: subtitle,
    bodyText2: body2,
    bodyText1: body1,
    caption: caption,
  );

  static const TextStyle display1 = TextStyle(
    // h4 -> display1
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: darkerText,
  );

  static const TextStyle headline = TextStyle(
    // h5 -> headline
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: darkerText,
  );

  static const TextStyle title = TextStyle(
    // h6 -> title
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: darkerText,
  );

  static const TextStyle subtitle = TextStyle(
    // subtitle2 -> subtitle
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: darkText,
  );

  static const TextStyle body2 = TextStyle(
    // body1 -> body2
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: darkText,
  );

  static const TextStyle body1 = TextStyle(
    // body2 -> body1
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: darkText,
  );

  static const TextStyle caption = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: lightText, // was lightText
  );
}
