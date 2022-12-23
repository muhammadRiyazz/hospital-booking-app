import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

ValueNotifier<int> IndexValueNotifier = ValueNotifier(0);

class BottomNavigatonBar extends StatelessWidget {
  BottomNavigatonBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20, left: 12, right: 12),
      child: ValueListenableBuilder(
        valueListenable: IndexValueNotifier,
        builder: (context, newindex, child) {
          return CustomNavigationBar(
              currentIndex: newindex,
              onTap: (index) {
                IndexValueNotifier.value = index;
              },
              borderRadius: Radius.circular(20.0),
              iconSize: 25,
              selectedColor: Color.fromARGB(255, 46, 44, 53),
              strokeColor: Color(0x30040307),
              unSelectedColor: Color(0xffacacac),
              backgroundColor: Colors.white,

              // borderRadius: BorderRadius.all(Radius.circular()),
              items: [
                CustomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  //  title: Text("Home"),
                ),
                CustomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  //title: Text("Home"),
                ),
                CustomNavigationBarItem(
                  icon: const Icon(Icons.notifications_active),
                  //title: Text(""),
                ),
                CustomNavigationBarItem(
                  icon: const Icon(Icons.account_circle),
                  // title: Text("Home"),
                ),
              ]);
        },
      ),
    );
  }
}