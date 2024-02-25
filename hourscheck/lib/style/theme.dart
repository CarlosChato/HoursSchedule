import 'package:flutter/material.dart';

ThemeData app = ThemeData.dark().copyWith(
  appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 6, 119, 139)),
  bottomAppBarTheme: const BottomAppBarTheme(
    color: Color.fromARGB(255, 35, 96, 202),
    shape: CircularNotchedRectangle(),
  ),
);
