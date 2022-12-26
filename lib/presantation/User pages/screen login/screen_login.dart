import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constands.dart';
import '../screen main/screen_main.dart';
import '../screen sign up/screen_sign_up.dart';

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
            const Spacer(),
            Center(
              child: SizedBox(
                  height: 220,
                  width: 220,
                  child: Image.asset('lib/assets/Group 36074.png')),
            ),
            const Spacer(
              flex: 1,
            ),
            const Center(
              child: Text(
                'Login to your Account',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            hsizedbox10,
            const Mailtextfield(
                hindtxt: 'Email', icon: Icon(Icons.email_outlined)),
            const Mailtextfield(
                hindtxt: 'Password', icon: Icon(Icons.lock_outline_rounded)),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 7),
              // child: Text(
              //   'Forget password',
              //   style: TextStyle(
              //     color: mBlue,
              //     fontSize: 15,
              //   ),
              // ),
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
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don’t have an account?"),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ScreenSignUp();
                      },
                    ));
                  },
                  child: const Text(
                    "Sign Up ",
                    style: TextStyle(color: mBlue),
                  ),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: const [
                  Expanded(
                      child: const Divider(
                    thickness: 1,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'or continue with',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 1,
                  )),
                ],
              ),
            ),
            hsizedbox10,
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: cmain),
                  borderRadius: radius10,
                  color: mWhite,
                ),
                height: 70,
                child: Image.asset('lib/assets/gpay.png'),
              ),
              wsizedbox20,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: cmain),
                  borderRadius: radius10,
                  color: mWhite,
                ),
                height: 70,
                child: Image.asset('lib/assets/gpay.png'),
              ),
            ]),
            hsizedbox20
          ],
        ),
      )),
    );
  }
}

class Mailtextfield extends StatelessWidget {
  const Mailtextfield({Key? key, required this.hindtxt, required this.icon})
      : super(key: key);
  final String hindtxt;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: icon,
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 14),
          focusColor: mBlack,
          border: OutlineInputBorder(borderRadius: radius15),
          hintText: hindtxt,
        ),
      ),
    );
  }
}
