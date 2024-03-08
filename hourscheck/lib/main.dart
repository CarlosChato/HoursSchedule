import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hourscheck/pages/home.dart';
import 'package:hourscheck/style/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Root of the application
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hours Schedule',
      theme: app,
      initialRoute: '/',
      routes: {'/': (context) => Home()},
    );
  }
}
