import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constands.dart';

import '../screen login/screen_login.dart';

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
              Center(
                child: SizedBox(
                    height: 220,
                    width: 220,
                    child: Image.asset('lib/assets/Group 36074.png')),
              ),
              Spacer(flex: 1),
              const Center(
                child: Text(
                  'Create Your account',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              hsizedbox10,
              const Signtextfield(
                  hindtxt: 'Email', icon: Icon(Icons.email_outlined)),
              const Signtextfield(
                hindtxt: 'Password',
                icon: Icon(Icons.lock_open_rounded),
              ),
              const Signtextfield(
                  hindtxt: 'Conform Password',
                  icon: Icon(Icons.lock_outline_rounded)),
              hsizedbox10,
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
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
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
                  decoration: BoxDecoration(
                      border: Border.all(color: cmain), borderRadius: radius10),
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: Image.asset('lib/assets/facebook-color-icon.png'),
                  ),
                ),
                wsizedbox20,
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: cmain), borderRadius: radius10),
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('lib/assets/gpay.png'),
                  ),
                ),
              ]),
              hsizedbox20
            ],
          ),
        ),
      ),
    );
  }
}

class Signtextfield extends StatelessWidget {
  const Signtextfield({Key? key, required this.hindtxt, required this.icon})
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
          border: const OutlineInputBorder(borderRadius: radius15),
          hintText: hindtxt,
        ),
      ),
    );
  }
}
