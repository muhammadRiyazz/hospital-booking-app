import 'package:appoiment_docter/presantation/screen%20login/screen_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../core/colors/colors.dart';
import '../../core/constands.dart';

class ScreenSignUp extends StatelessWidget {
  const ScreenSignUp({super.key});

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
              const Signtextfield(hindtxt: 'Email'),
              const Signtextfield(hindtxt: 'Password'),
              const Signtextfield(hindtxt: 'Conform Password'),
              Spacer(flex: 1),
              TextButton(
                  onPressed: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: radius10, color: cmain),
                    width: double.infinity,
                    height: 50,
                    child: Center(
                        child: Text(
                      'Sign up',
                      style: TextStyle(color: mWhite),
                    )),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ScreenLogin();
                        },
                      ));
                    },
                    child: Text(
                      "Sign In ",
                      style: TextStyle(color: mBlue),
                    ),
                  ),
                ],
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}

class Signtextfield extends StatelessWidget {
  const Signtextfield({
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
