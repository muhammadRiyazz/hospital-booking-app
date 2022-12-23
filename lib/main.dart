import 'package:appoiment_docter/presantation/Screen%20home/screen_home.dart';
import 'package:appoiment_docter/presantation/screen%20main/screen_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenMain(),
    );
  }
}
