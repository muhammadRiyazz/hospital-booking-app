import 'package:appoiment_docter/core/colors/colors.dart';
import 'package:appoiment_docter/presantation/User%20pages/screen%20login/screen_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../core/constands.dart';
import '../screen main/screen_main.dart';
import '../screen sign up/screen_sign_up.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ScreenMain();
          } else {
            return const ScreenFirst();
          }
        });
  }
}

class ScreenFirst extends StatelessWidget {
  const ScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    Size mysize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Container(
              //color: mGrey,
              padding: const EdgeInsets.all(10),
              height: mysize.height * 0.5,
              child: Center(
                child: Image.asset(
                  'lib/assets/Group 36074.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Spacer(flex: 1),
            Bottun(
              mytext: 'Create Account',
              navigation: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const ScreenSignUp();
                  },
                ));
              },
            ),
            hsizedbox10,
            Bottun(
              mytext: 'Sign In',
              navigation: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ScreenLogin();
                    },
                  ),
                );
              },
            ),
            const Spacer(flex: 1),
          ],
        ),
      )),
    );
  }
}

class Bottun extends StatelessWidget {
  const Bottun({Key? key, required this.mytext, required this.navigation, ad})
      : super(key: key);
  final String mytext;
  final navigation;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: navigation,
        child: Container(
          decoration: const BoxDecoration(borderRadius: radius10, color: cmain),
          width: double.infinity,
          height: 55,
          child: Center(
              child: Text(
            mytext,
            style: const TextStyle(color: mWhite),
          )),
        ));
  }
}
