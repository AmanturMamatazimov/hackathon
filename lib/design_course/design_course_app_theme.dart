import 'package:flutter/material.dart';

class DesignCourseAppTheme {
  DesignCourseAppTheme._();

  static const Color notWhite = Color(0xFF9C5C2C); // Light Violet
  static const Color nearlyWhite = Color(0xFFE0DEDE); // Lavender
  static const Color nearlyBlue = Color(0xFF7F3B88); // Blue Violet
  static const Color nearlyBlack = Color(0xFF412759); // Dark Violet
  static const Color grey = Color(0xFF6B4975); // Medium Violet

  static const Color darkText = Color(0xFF3F2A4C); // Dark Plum
  static const Color darkerText = Color(0xFF291A34); // Dark Indigio
  static const Color lightText = Color(0xFF785D8C); // Light Plum
  static const Color deactivatedText = Color(0xFFB2A2C2); // Misty Rose

  static const Color dismissibleBackground = Color(0xFF60437C); // Medium Orchid
  static const Color chipBackground = Color(0xFFEAEAF2); // Lavender Blush
  static const Color spacer = Color(0xFFF0EEEE); // Light Steel Blue

  static const TextTheme textTheme = TextTheme(
    headline4: display1,
    headline5: headline,
    headline6: title,
    subtitle2: subtitle,
    bodyText1: body2,
    bodyText2: body1,
    caption: caption,
  );

  static const TextStyle display1 = TextStyle(
    // h4 -> display1
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: darkerText,
  );

  static const TextStyle headline = TextStyle(
    // h5 -> headline
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: darkerText,
  );

  static const TextStyle title = TextStyle(
    // h6 -> title
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: darkerText,
  );

  static const TextStyle subtitle = TextStyle(
    // subtitle2 -> subtitle
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: darkText,
  );

  static const TextStyle body2 = TextStyle(
    // body1 -> body2
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: darkText,
  );

  static const TextStyle body1 = TextStyle(
    // body2 -> body1
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: darkText,
  );

  static const TextStyle caption = TextStyle(
    // Caption -> caption
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: lightText, // was lightText
  );
}
