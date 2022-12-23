import 'package:appoiment_docter/core/colors/colors.dart';
import 'package:appoiment_docter/core/constands.dart';
import 'package:appoiment_docter/presantation/Screen%20setings/screen_setings.dart';
import 'package:appoiment_docter/presantation/screen%20userprofile/sceen_user_profile.dart';

import 'package:flutter/material.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
      child: Column(
        children: [
          hsizedbox10,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 60,
                decoration: const BoxDecoration(
                  borderRadius: radius10,

                  ///color: mgreya,
                ),
                child: Image.asset('lib/assets/hsptl.png'),
              ),
              wsizedbox10,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Aster Hospital',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  hsizedbox2,
                  Text(
                    'Palarivettam,Kochin',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: mGrey),
                  ),
                ],
              )
            ],
          ),
          hsizedbox10,
          const Divider(
            thickness: 1,
            // height: 50,
          ),
          Expanded(
            child: ListView(
              children: const [
                Mainlistile(
                  mytext: 'Profile',
                  navigation: ScreenUserprofile(),
                ),
                Mainlistile(
                  mytext: 'About',
                  navigation: ScreeenSetings(),
                ),
                Mainlistile(
                  mytext: 'Share',
                  navigation: ScreeenSetings(),
                ),
                Mainlistile(
                  mytext: 'Help',
                  navigation: ScreeenSetings(),
                ),
                Mainlistile(
                  mytext: 'Setings',
                  navigation: ScreeenSetings(),
                ),
                Mainlistile(
                  mytext: 'Log Out',
                  navigation: ScreeenSetings(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Mainlistile extends StatelessWidget {
  const Mainlistile({
    required this.mytext,
    required this.navigation,
    Key? key,
  }) : super(key: key);
  final String mytext;
  final navigation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListTile(
        trailing: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return navigation;
              },
            ));
          },
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: radius10,
              color: mgreya,
            ),
            height: 40,
            width: 40,
            child: const Icon(Icons.navigate_next_rounded),
          ),
        ),
        leading: Container(
          decoration: const BoxDecoration(
            borderRadius: radius10,
            color: mgreya,
          ),
          height: 50,
          width: 50,
        ),
        title: Text(
          mytext,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
