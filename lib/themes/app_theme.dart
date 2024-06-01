import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.pink;
  static final ThemeData pastyTheme = ThemeData(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 2
    ),
    iconTheme: const IconThemeData(
      color: primary
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primary
      )
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        //foregroundColor: Colors.white,
        shape: const StadiumBorder(), //redondeo de botton
        elevation: 0
      )
    )
    );
}