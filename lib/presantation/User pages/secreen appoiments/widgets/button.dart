import 'package:appoiment_docter/core/colors/colors.dart';
import 'package:appoiment_docter/presantation/User%20pages/screen%20time%20and%20date/screen_time_date.dart';
import 'package:flutter/material.dart';

import '../../../../core/constands.dart';

class TwoButtons extends StatelessWidget {
  const TwoButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return ScreenDateTime();
              },
            ));
          },
          child: Container(
            decoration:
                const BoxDecoration(color: cmain, borderRadius: radius5),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
              'Reschedule',
              style: TextStyle(color: mWhite),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Container(
            decoration:
                const BoxDecoration(color: cmain, borderRadius: radius5),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: const Text(
              'Cancel',
              style: TextStyle(color: mWhite),
            ),
          ),
        ),
      ],
    );
  }
}
