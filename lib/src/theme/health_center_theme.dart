import 'package:flutter/material.dart';

final class HealthCenterTheme {
  static const orangeColor = Color(0xFFFFAe45);
  static const lightOrangeColor = Color(0xFFFFEFE9);
  static const blueColor = Color(0xFF01BDD6);
  static const lightGreyColor = Color(0xFFFFEFE9);

  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: const BorderSide(color: lightOrangeColor),
  );

  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: lightOrangeColor),
    useMaterial3: true,
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: lightOrangeColor,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide.none,
      ),
      labelStyle: const TextStyle(
        color: orangeColor,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      filled: true,
      fillColor: lightOrangeColor,
      floatingLabelStyle: const TextStyle(
        color: blueColor,
        fontWeight: FontWeight.w600,
      ),
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
      errorBorder: _defaultInputBorder.copyWith(
        borderSide: const BorderSide(color: Colors.red),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: blueColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          textStyle: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14,
              fontWeight: FontWeight.w700)),
    ),
  );

  static final darkTheme = lightTheme;

  static const titleStyle =
      TextStyle(color: blueColor, fontSize: 32, fontWeight: FontWeight.w900);
  static const titleSmallStyle =
      TextStyle(color: blueColor, fontSize: 24, fontWeight: FontWeight.w900);
  static const subTitleSmallStyle =
      TextStyle(color: blueColor, fontSize: 18, fontWeight: FontWeight.w500);
}
