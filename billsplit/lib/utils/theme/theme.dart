import 'package:billsplit/utils/theme/custom/elevated_button_theme.dart';
import 'package:billsplit/utils/theme/custom/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:billsplit/utils/constants/colors.dart';

class BillSplitTheme {
  // To make it private
  BillSplitTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: kBackgroundColorLight,
    textTheme: BSTextTheme.lightTextTheme,
    elevatedButtonTheme: BSElevatedButtonTheme.lightElevatedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: kBackgroundColorDark,
    textTheme: BSTextTheme.lightTextTheme,
    elevatedButtonTheme: BSElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
