import 'package:appoiment_docter/core/colors/colors.dart';
import 'package:appoiment_docter/core/constands.dart';
import 'package:appoiment_docter/presantation/User%20pages/secreen%20appoiments/screen_appoiment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../screen aboutdocter/screen_about_docter.dart';
import '../screen time and date/screen_time_date.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({super.key});

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
  List<String> catagoreis = [
    "Cardiolagy",
    "Dhandhist",
    "Cardiolagy",
    "Dhandhist",
    "Cardiolagy",
    "Dhandhist",
    "Cardiolagy",
    "Dhandhist",
    "Cardiolagy",
  ];

  int current = 0;

  PageController mycontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 3, left: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: radius10,
                      color: mgreya,
                    ),
                    height: 50,
                    width: 50,
                    child: const Icon(
                      size: 15,
                      Icons.arrow_back_ios_new_sharp,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: radius30,
                            color: cmain,
                          ),
                          height: 40,
                          width: 40,
                          child: const Icon(
                            size: 29,
                            Icons.search,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      focusColor: mBlack,
                      border: OutlineInputBorder(borderRadius: radius20),
                      hintText: 'Find Your Docter',
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
              //controller: mycontroller,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: catagoreis.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            current = index;
                            mycontroller.jumpToPage(current);
                          });
                        },
                        child: SimpleShadow(
                          // opacity: 0.5, // Default: 0.5
                          // //color: mgreya, // Default: Black
                          // offset: const Offset(
                          //   5,
                          //   5,
                          // ), // Default: Offset(2, 2)
                          // sigma: 7,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: radius10,
                              color: index == current ? cmain : mgreyb,
                            ),
                            // height: 20,
                            width: 140,
                            height: 40,

                            child: Center(
                                child: Text(
                              catagoreis[index].toUpperCase(),
                              style: TextStyle(
                                  fontSize: current == index ? 16 : 15,
                                  fontWeight: current == index
                                      ? FontWeight.w500
                                      : FontWeight.w400,
                                  color: current == index ? mgreya : mBlack),
                            )),
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: current == index,
                      child: Container(
                        height: 3,
                        width: 30,
                        decoration: const BoxDecoration(
                          borderRadius: radius15,
                          color: cmain,
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: PageView(
              controller: mycontroller,
              scrollDirection: Axis.horizontal,

              onPageChanged: (value) {
                setState(() {
                  current = value;
                  mycontroller.jumpToPage(current);
                });
              },
              children: pages,
              // itemBuilder: (context, index) {
              //   return const Ourpageview();
              // },
            ),
          )
        ]),
      ),
    );
  }
}

List<Widget> pages = [
  const Ourpageview(),
  Container(
    height: 500,
    width: double.infinity,
    color: Colors.red,
  ),
  const Ourpageview(),
  Container(
    height: 500,
    width: double.infinity,
    color: Colors.yellow,
  ),
  const Ourpageview(),
  Container(
    height: 500,
    width: double.infinity,
    color: Colors.red,
  ),
  const Ourpageview(),
  Container(
    height: 500,
    width: double.infinity,
    color: Colors.red,
  ),
  Container(
    height: 500,
    width: double.infinity,
    color: Colors.red,
  )
];

class Ourpageview extends StatelessWidget {
  const Ourpageview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return SimpleShadow(
          opacity: 0.6, // Default: 0.5
          color: mgreya, // Default: Black
          offset: const Offset(
            5,
            6,
          ), // Default: Offset(2, 2)
          sigma: 7,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AdoutDocter(
                      indexdoctor: index,
                    );
                  },
                ));
              },
              child: Container(
                padding: const EdgeInsets.all(7),
                decoration: const BoxDecoration(
                  borderRadius: radius15,
                  color: mWhite,
                ),
                height: 120,
                child: Row(children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: radius10,
                        // color: mgreya,
                      ),
                      child: Image.asset('lib/assets/docter 1.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Doctertxt(),
                      // Doctername(),

                      // Spacer(),
                      // Date(),
                      // TwoButtons()
                      ClickButton(),
                    ],
                  )
                ]),
              ),
            ),
          ),
        );
      },
      itemCount: 6,
    );
  }
}

class Doctertxt extends StatelessWidget {
  const Doctertxt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Dr.Jhone MBBS',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          Text(
            'Cardiolagist',
            style: TextStyle(fontSize: 15, color: mGreyc),
          ),
        ],
      ),
    );
  }
}

class ClickButton extends StatelessWidget {
  const ClickButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return ScreenDateTime();
          },
        ));
      },
      child: Container(
        decoration: const BoxDecoration(color: cmain, borderRadius: radius5),
        padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 10),
        child: const Text(
          'Appoiment',
          style: TextStyle(color: mWhite),
        ),
      ),
    );
  }
}
