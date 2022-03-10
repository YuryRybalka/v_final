import 'package:flutter/material.dart';

ThemeData gTheme() => ThemeData(
  primaryColorLight: const Color.fromRGBO(96, 185,206, 1.0),
  appBarTheme: const AppBarTheme(
      color: Color(0xff5CCCCC)
  ),
  fontFamily: 'Georgia',
  splashColor: Colors.brown,
  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
    backgroundColor: Colors.lightGreen,
  ).copyWith(
    secondary: Colors.green,
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.bold,
      color: Colors.brown,
    ),
    headline2: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.cyan,
    ),
    bodyText1: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(0, 0, 0, 0.6),
    ),
    bodyText2: TextStyle(
        fontSize: 25,
        color: Color.fromRGBO(0, 0, 0, 0.6),
    ),
  ),
);