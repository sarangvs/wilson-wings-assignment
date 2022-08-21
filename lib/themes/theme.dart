import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppTheme.primaryColor,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
    primaryTextTheme: const TextTheme(
      headline1: TextStyle(
        color: Color(0xff525255),
      ),
    ));

class AppTheme {
  static const primaryColor = Color(0xffF16778);
  static const secondaryColor = Color(0xff748BC5);
  static const greenShade = Color(0xffA9D59B);
  static const secondaryDark = Color(0xff556EAD);
  static const lightGreyShade = Color(0xffE4E4E4);
}
