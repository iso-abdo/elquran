import 'package:flutter/material.dart';
import 'package:quran/appcolors.dart';

class MyThemData {
  static final ThemeData lightmode = ThemeData(
    primaryColor: AppColors.prymarylightmod,
    canvasColor: AppColors.prymarylightmod,

    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.prymarylightmod,
      selectedItemColor: AppColors.blackcolor,
      unselectedItemColor: AppColors.whitecolor,
    ),

    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.blackcolor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: AppColors.blackcolor,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        color: AppColors.blackcolor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
