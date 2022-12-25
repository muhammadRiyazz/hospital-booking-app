import 'package:appoiment_docter/core/colors/colors.dart';
import 'package:appoiment_docter/core/constands.dart';
import 'package:appoiment_docter/presantation/screen%20firstlog/screen_firstlog.dart';
import 'package:appoiment_docter/presantation/screen%20main/screen_main.dart';
import 'package:flutter/material.dart';

class ScreenScndSplash extends StatefulWidget {
  const ScreenScndSplash({super.key});

  @override
  State<ScreenScndSplash> createState() => _ScreenScndSplashState();
}

class _ScreenScndSplashState extends State<ScreenScndSplash> {
  Container buildDot(int index) {
    return Container(
      margin: const EdgeInsets.all(3),
      height: 10,
      width: currentIndex == index ? 25 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: cmain,
      ),
    );
  }

  int currentIndex = 0;

  PageController mycontroller = PageController();

  @override
  Widget build(BuildContext context) {
    Size mysize = MediaQuery.of(context).size;
    List pages = [
      PageviewFirst(mysize: mysize),
      PageviewScnd(mysize: mysize),
      Pageviewlast(mysize: mysize),
    ];
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                controller: mycontroller,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return pages[index];
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => buildDot(index),
              ),
            ),
            TextButton(
                onPressed: () {
                  currentIndex == 2
                      ? Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ScreenFirst();
                          },
                        ))
                      : setState(() {
                          mycontroller.nextPage(
                            duration: const Duration(microseconds: 100),
                            curve: Curves.bounceIn,
                          );
                        });
                },
                child: Container(
                  decoration:
                      const BoxDecoration(borderRadius: radius10, color: cmain),
                  width: double.infinity,
                  height: 50,
                  child: Center(
                      child: currentIndex == 2
                          ? Text(
                              'Get Start',
                              style: TextStyle(color: mWhite),
                            )
                          : Text(
                              'Next',
                              style: TextStyle(color: mWhite),
                            )),
                )),
            hsizedbox15
          ],
        ),
      )),
    );
  }
}

class PageviewFirst extends StatelessWidget {
  const PageviewFirst({
    Key? key,
    required this.mysize,
  }) : super(key: key);

  final Size mysize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: mysize.height * 0.5,
          color: cmain,
        ),
        hsizedbox15,
        const Text(
          'Get Follow up your\nAppoinment',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        hsizedbox20,
        const Text(
          'Manage appoinments with your docter\nand ger accurate information ',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: mGreyc),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class PageviewScnd extends StatelessWidget {
  const PageviewScnd({
    Key? key,
    required this.mysize,
  }) : super(key: key);

  final Size mysize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: mysize.height * 0.5,
          color: mGrey,
        ),
        hsizedbox15,
        const Text(
          'Book the best doctor\nin your ASTER',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        hsizedbox20,
        const Text(
          'More than 100+ specialist doctors are\nready to serve you ',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: mGreyc),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class Pageviewlast extends StatelessWidget {
  const Pageviewlast({
    Key? key,
    required this.mysize,
  }) : super(key: key);

  final Size mysize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: mysize.height * 0.5,
          color: mBlue,
        ),
        hsizedbox15,
        const Text(
          'Easier with a secure\nsystem',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        hsizedbox20,
        const Text(
          'We are prioritize and safety for\nyou and your dactor ',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: mGreyc),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
