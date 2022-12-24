import 'package:appoiment_docter/core/constands.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../core/colors/colors.dart';

class ScreeenSetings extends StatelessWidget {
  const ScreeenSetings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
          child: Column(
            children: [
              // hsizedbox10,
              ListTile(
                //  contentPadding: EdgeInsets.zero,
                title: const Text(
                  'Settings',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                leading: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: radius10,
                      color: mgreya,
                    ),
                    height: 40,
                    width: 40,
                    child: const Icon(
                      size: 15,
                      Icons.arrow_back_ios_new_sharp,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: ListView(
                children: [
                  SetingsListtile(
                    mtext: 'Notification',
                    mwidget: ToggleSwitch(
                      minWidth: 65.0,
                      cornerRadius: 10.0,
                      activeBgColors: const [
                        [mBlack],
                        [mBlack]
                      ],
                      activeFgColor: Color.fromARGB(255, 255, 255, 255),
                      inactiveBgColor: mgreya,
                      inactiveFgColor: Color.fromARGB(255, 0, 0, 0),
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: const ['On', 'Off'],
                      radiusStyle: true,
                      onToggle: (index) {
                        //   print('switched to: $index');
                      },
                    ),
                  ),
                  SetingsListtile(
                    mtext: 'Theam',
                    mwidget: ToggleSwitch(
                      minWidth: 65.0,
                      cornerRadius: 10.0,
                      activeBgColors: const [
                        [mBlack],
                        [mBlack]
                      ],
                      activeFgColor: Color.fromARGB(255, 255, 255, 255),
                      inactiveBgColor: mgreya,
                      inactiveFgColor: Color.fromARGB(255, 0, 0, 0),
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: const ['Dark', 'white'],
                      radiusStyle: true,
                      onToggle: (index) {
                        //   print('switched to: $index');
                      },
                    ),
                  ),
                  SetingsListtile(
                    mwidget: Container(
                      decoration: const BoxDecoration(
                        borderRadius: radius10,
                        color: mgreya,
                      ),
                      height: 40,
                      width: 40,
                      child: const Icon(Icons.navigate_next_rounded),
                    ),
                    mtext: 'Privecy And Policy',
                  ),
                  SetingsListtile(
                    mwidget: Container(
                      decoration: const BoxDecoration(
                        borderRadius: radius10,
                        color: mgreya,
                      ),
                      height: 40,
                      width: 40,
                      child: const Icon(Icons.navigate_next_rounded),
                    ),
                    mtext: 'Terms And Counditians',
                  ),
                  SetingsListtile(
                    mwidget: Container(
                      decoration: const BoxDecoration(
                        borderRadius: radius10,
                        color: mgreya,
                      ),
                      height: 40,
                      width: 40,
                      child: const Icon(Icons.navigate_next_rounded),
                    ),
                    mtext: 'Licenses',
                  )
                ],
              )),
              hsizedbox20,
            ],
          ),
        ),
      ),
    );
  }
}

class SetingsListtile extends StatelessWidget {
  const SetingsListtile({
    required this.mtext,
    required this.mwidget,
    Key? key,
  }) : super(key: key);
  final String mtext;
  final Widget mwidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
          leading: Container(
            decoration: const BoxDecoration(
              borderRadius: radius10,
              color: mgreya,
            ),
            height: 50,
            width: 50,
          ),
          title: Text(
            mtext,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          trailing: mwidget),
    );
  }
}
