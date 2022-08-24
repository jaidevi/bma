import 'package:flutter/material.dart';
enum AppTheme {
  authTheme,
}

final appThemeData = {
  AppTheme.authTheme: ThemeData(
    primaryColor: const Color.fromARGB(255, 219, 219, 219),
    splashColor: const Color.fromARGB(255, 164, 164, 164),
    textTheme: TextTheme(
      bodyText2: TextStyle(
        color: const Color.fromARGB(255, 164, 164, 164),
        fontSize: 40,
        fontFamily: "Segoe-UI",
      ),
      bodyText1: TextStyle(
        color: const Color.fromARGB(255, 164, 164, 164),
        fontSize: 14,
        fontFamily: "Segoe-UI",
      ),
    ),
  ),
};