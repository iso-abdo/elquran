import 'package:flutter/material.dart';
import 'package:quran/appcolors.dart';

class MyThemData {
  static final ThemeData lightmode = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.blackcolor,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
