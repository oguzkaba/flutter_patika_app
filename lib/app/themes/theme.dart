import 'package:flutter/material.dart';
import 'package:flutter_patika_app/app/global/constants.dart';

class Themes {
  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
            backgroundColor: lightAppBarColor,
            titleTextStyle: TextStyle(
                color: lightAppBarTextColor,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        scaffoldBackgroundColor: Colors.white,
        primaryTextTheme:
            TextTheme(bodyText1: TextStyle(color: lightH1TextColor)));
  }

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith();
  }
}
