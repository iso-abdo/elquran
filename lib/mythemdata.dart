import 'package:flutter/material.dart';
import 'package:quran/appcolors.dart';

class MyThemData {
  static final ThemeData lightmode = ThemeData(
    primaryColor: AppColors.prymarylightmod,
    canvasColor: AppColors.prymarylightmod,

    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: AppColors.blackcolor),
      eelevation: 0,
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
        titleLarge: TextStyle(
          color: AppColors.blackcolor,
          fontSize: 30,
          fontWeight: FontWeight.w800,
        )
    ),
  );
}
