import 'package:appoiment_docter/presantation/Adminpages/screen%20main/screen%20main.dart';
import 'package:appoiment_docter/presantation/User%20pages/screen%20threepart/screen_scnd_splash.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenScndSplash(),
    );
  }
}
