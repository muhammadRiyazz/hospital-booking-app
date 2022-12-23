import 'package:appoiment_docter/presantation/Screen%20home/screen_home.dart';
import 'package:appoiment_docter/presantation/screen%20main/Widgets/bottom_navigation%20bar.dart';
import 'package:appoiment_docter/presantation/screen%20profile/screen_profile.dart';
import 'package:appoiment_docter/presantation/secreen%20appoiments/screen_appoiment.dart';
import 'package:appoiment_docter/presantation/secreen%20notification/screen%20notification.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenMain extends StatelessWidget {
  ScreenMain({super.key});

  final _pages = [
    ScreenHome(),
    ScreenAppoiments(),
    ScreenNotification(),
    ScreenProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: IndexValueNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigatonBar(),
    );
  }
}
