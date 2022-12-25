import 'package:appoiment_docter/presantation/screen%20main/screen_main.dart';
import 'package:appoiment_docter/presantation/screen%20sign%20up/screen_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../core/colors/colors.dart';
import '../../core/constands.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Spacer(flex: 1),
            Image.asset('lib/assets/Group 36074.png'),
            Spacer(flex: 1),
            const Mailtextfield(hindtxt: 'Email'),
            const Mailtextfield(hindtxt: 'Password'),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
              child: Text(
                'Forget password',
                style: TextStyle(
                  color: mBlue,
                  fontSize: 15,
                ),
              ),
            ),
            const Spacer(flex: 1),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ScreenMain();
                    },
                  ));
                },
                child: Container(
                  decoration:
                      const BoxDecoration(borderRadius: radius10, color: cmain),
                  width: double.infinity,
                  height: 50,
                  child: const Center(
                      child: Text(
                    'Sign In',
                    style: TextStyle(color: mWhite),
                  )),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account? "),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ScreenSignUp();
                      },
                    ));
                  },
                  child: Text(
                    "Sign Up ",
                    style: TextStyle(color: mBlue),
                  ),
                ),
              ],
            ),
            Spacer(flex: 1),
          ],
        ),
      )),
    );
  }
}

class Mailtextfield extends StatelessWidget {
  const Mailtextfield({
    Key? key,
    required this.hindtxt,
  }) : super(key: key);
  final String hindtxt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 14),
          focusColor: mBlack,
          border: OutlineInputBorder(borderRadius: radius15),
          hintText: hindtxt,
        ),
      ),
    );
  }
}
