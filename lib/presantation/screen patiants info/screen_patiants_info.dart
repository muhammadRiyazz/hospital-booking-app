import 'package:appoiment_docter/presantation/screen%20payment/scree_payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../core/colors/colors.dart';
import '../../core/constands.dart';

class ScreenPatiantsInfo extends StatelessWidget {
  const ScreenPatiantsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            title: const Text(
              'Patient Details',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
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
          const Infotext(
            hindtext: 'Name',
            icon: Icon(Icons.account_circle, color: cmain),
            label: "Name",
          ),
          const Infotext(
            hindtext: 'Genter',
            icon: Icon(Icons.man_outlined, color: cmain),
            label: "Genter",
          ),
          const Infotext(
            hindtext: 'Age',
            icon: Icon(Icons.apps_outage_rounded, color: cmain),
            label: "Age",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Pleas Write Your Problem',
                  style: TextStyle(color: mGreyc, fontWeight: FontWeight.bold),
                ),
                hsizedbox10,
                TextField(
                  maxLines: 7,
                  decoration: InputDecoration(
                    isDense: true,
                    // contentPadding: EdgeInsets.symmetric(vertical: 60),
                    focusColor: mBlack,
                    border: OutlineInputBorder(borderRadius: radius15),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ScreenPaymnt();
                    },
                  ));
                },
                child: Container(
                  decoration:
                      const BoxDecoration(borderRadius: radius10, color: cmain),
                  width: double.infinity,
                  height: 45,
                  child: const Center(
                      child: Text(
                    'Conform',
                    style: TextStyle(color: mWhite),
                  )),
                )),
          ),
        ],
      )),
    );
  }
}

class Infotext extends StatelessWidget {
  const Infotext({
    Key? key,
    required this.hindtext,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final Widget icon;
  final String hindtext;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              icon,
              wsizedbox5,
              Text(
                label,
                style: TextStyle(color: mGreyc, fontWeight: FontWeight.bold),
              )
            ],
          ),
          hsizedbox5,
          TextField(
            decoration: InputDecoration(
              focusColor: mBlack,
              border: OutlineInputBorder(borderRadius: radius15),
              hintText: hindtext,
            ),
          ),
        ],
      ),
    );
  }
}
