import 'package:flutter/material.dart';

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
    cardColor: Color(0xffFFF6E3),
    scaffoldBackgroundColor: Color(0xffeeeff1),
    highlightColor: Color(0xffaead8a),
    bottomAppBarTheme: BottomAppBarTheme(color: Color(0xff29048d)),
    canvasColor: Colors.black,
    primarySwatch: Colors.deepPurple,
    indicatorColor: Colors.white,
    filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
          foregroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
        )),
    textTheme: TextTheme(
      titleMedium: TextStyle(color: Color(0xff1f1f1f)),
      titleLarge: TextStyle(color: Color(0xff1f1f1f)),
      titleSmall: TextStyle(color: Color(0xff1f1f1f)),
      bodySmall: TextStyle(color: Colors.white),
    ),
    iconTheme: IconThemeData(
      color: Color(0xff29048d),
    ),
    tabBarTheme: TabBarTheme(labelColor: Color(0xff1f1f1f)),
    appBarTheme: AppBarTheme(
      surfaceTintColor: Color(0xff29048d),
      shadowColor: Color(0xff29048d),
      foregroundColor: Color(0xff29048d),
      elevation: 0,
      toolbarHeight: 60,
      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xff1f1f1f),
      ),
      backgroundColor: Color(0xfff5f0f0),
    ),
    iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(foregroundColor: Colors.black)),
    drawerTheme: DrawerThemeData(
      backgroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
    ),
  );

}