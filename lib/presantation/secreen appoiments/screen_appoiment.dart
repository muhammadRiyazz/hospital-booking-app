import 'package:appoiment_docter/core/colors/colors.dart';
import 'package:appoiment_docter/core/constands.dart';
import 'package:appoiment_docter/presantation/screens%20appoimentdetails/screen_details.dart';
import 'package:appoiment_docter/presantation/secreen%20appoiments/widgets/button.dart';
import 'package:appoiment_docter/presantation/secreen%20appoiments/widgets/date.dart';
import 'package:appoiment_docter/presantation/secreen%20appoiments/widgets/docter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:simple_shadow/simple_shadow.dart';

class ScreenAppoiments extends StatelessWidget {
  const ScreenAppoiments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Appoiments',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        ),
        Listviewdocter(),
      ],
    );
  }
}

class Listviewdocter extends StatelessWidget {
  const Listviewdocter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return AppoimentDetails();
                      },
                    ));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: const BoxDecoration(
                      borderRadius: radius15,
                      color: mWhite,
                    ),
                    height: 155,
                    child: Row(children: [
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: radius10,
                            //  color: mgreya,
                          ),
                          child: Image.asset('lib/assets/docter 1.png'),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Doctername(),
                          Spacer(),
                          Date(),
                          TwoButtons()
                        ],
                      )
                    ]),
                  ),
                ),
              ),
            );
          },
          itemCount: 10),
    );
  }
}
