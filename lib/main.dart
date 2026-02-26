import 'package:flutter/material.dart';
import 'package:quran/homescreen.dart';
import 'package:quran/mythemdata.dart';
import 'package:quran/soratidelesname.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: HomeScreen.routName,
        routes: {HomeScreen.routName: (context) => HomeScreen(),
          SoraDitelesName.routName: (context) => SoraDitelesName()
        },
        theme: MyThemData.lightmode
    );
  }
}