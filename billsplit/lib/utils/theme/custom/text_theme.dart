import 'package:billsplit/utils/constants/colors.dart';
import 'package:billsplit/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BSTextTheme {
  BSTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: kTextColorLightTheme),
    headlineMedium: TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: kTextColorLightTheme),
    headlineSmall: TextStyle().copyWith(
        fontSize: 28, fontWeight: FontWeight.w600, color: kTextColorLightTheme),
    titleLarge: TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: kTextColorLightTheme),
    titleMedium: TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: kTextColorLightTheme),
    titleSmall: TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: kTextColorLightTheme),
    bodyLarge: TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: kTextColorLightTheme),
    bodyMedium: TextStyle().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: kTextColorLightTheme),
    bodySmall: TextStyle().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: kTextColorLightTheme.withOpacity(0.5)),
    labelLarge: TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: kTextColorLightTheme),
    labelMedium: TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: kTextColorLightTheme.withOpacity(0.5)),
  );
  static TextTheme darkTextTheme = TextTheme(
      headlineLarge: TextStyle().copyWith(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: kTextColorDarkTheme),
      headlineMedium: TextStyle().copyWith(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: kTextColorDarkTheme),
      headlineSmall: TextStyle().copyWith(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: kTextColorDarkTheme),
      titleLarge: TextStyle().copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: kTextColorDarkTheme),
      titleMedium: TextStyle().copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: kTextColorDarkTheme),
      titleSmall: TextStyle().copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: kTextColorDarkTheme),
      bodyLarge: TextStyle().copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: kTextColorDarkTheme),
      bodyMedium: TextStyle().copyWith(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: kTextColorDarkTheme),
      bodySmall: TextStyle().copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: kTextColorDarkTheme.withOpacity(0.5)),
      labelLarge: TextStyle().copyWith(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: kTextColorDarkTheme),
      labelMedium: TextStyle().copyWith(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: kTextColorDarkTheme.withOpacity(0.5)));
}
