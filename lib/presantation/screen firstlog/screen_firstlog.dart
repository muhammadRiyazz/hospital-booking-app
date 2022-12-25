import 'package:appoiment_docter/core/colors/colors.dart';
import 'package:appoiment_docter/presantation/screen%20login/screen_login.dart';
import 'package:appoiment_docter/presantation/screen%20patiants%20info/screen_patiants_info.dart';
import 'package:appoiment_docter/presantation/screen%20sign%20up/screen_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../core/constands.dart';

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
            Spacer(
              flex: 2,
            ),
            Container(
              //color: mGrey,
              padding: EdgeInsets.all(10),
              height: mysize.height * 0.5,
              child: Center(
                child: Image.asset(
                  'lib/assets/Group 36074.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Spacer(flex: 1),
            bottun(
              mytext: 'Create Account',
              navigation: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const ScreenSignUp();
                  },
                ));
              },
            ),
            bottun(
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
            Spacer(flex: 1),
          ],
        ),
      )),
    );
  }
}

class bottun extends StatelessWidget {
  const bottun({
    Key? key,
    required this.mytext,
    required this.navigation,
  }) : super(key: key);
  final String mytext;
  final navigation;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: navigation,
        child: Container(
          decoration: const BoxDecoration(borderRadius: radius10, color: cmain),
          width: double.infinity,
          height: 45,
          child: Center(
              child: Text(
            mytext,
            style: TextStyle(color: mWhite),
          )),
        ));
  }
}
