import 'package:appoiment_docter/core/colors/colors.dart';
import 'package:appoiment_docter/core/constands.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_shadow/simple_shadow.dart';

class ScreenNotification extends StatelessWidget {
  const ScreenNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SimpleShadow(
        opacity: 1, // Default: 0.5
        color: mgreya, // Default: Black
        offset: const Offset(
          5,
          5,
        ), // Default: Offset(2, 2)
        sigma: 7,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: radius10,
            color: mWhite,
          ),
          child: Column(children: const [
            hsizedbox10,
            Center(
                child: Text(
              'NOTIFICATIONS',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )),
            hsizedbox10,
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('11 March 2022'),
            ),
            Alarm(),
            hsizedbox15,
            Conform(),
            Padding(
              padding: EdgeInsets.only(top: 50, bottom: 10),
              child: Text('11 March 2022'),
            ),
            Alarm(),
            hsizedbox15,
            Conform(),
          ]),
        ),
      ),
    );
  }
}

class Conform extends StatelessWidget {
  const Conform({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        wsizedbox10,
        const Padding(
          padding: EdgeInsets.only(right: 18),
          child: Icon(
            Icons.call_to_action_rounded,
            color: Colors.red,
            size: 38,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Appointment confirmed',
                style: TextStyle(
                    fontSize: 17, fontWeight: FontWeight.w500, color: mGrey),
              ),
              hsizedbox10,
              SizedBox(
                child: Text(
                  textAlign: TextAlign.start,
                  "Your serial is successfully added in appointment listSerial number is 45. Doctor  ",
                  style: TextStyle(color: cmain),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Alarm extends StatelessWidget {
  const Alarm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        wsizedbox10,
        const Padding(
          padding: EdgeInsets.only(right: 18),
          child: Icon(
            Icons.timer,
            color: mBlue,
            size: 38,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Appoiment Alarm',
                style: TextStyle(
                    fontSize: 17, fontWeight: FontWeight.w500, color: mGrey),
              ),
              hsizedbox10,
              SizedBox(
                child: Text(
                  textAlign: TextAlign.start,
                  "Your serial is successfully added in appointment listSerial number is 45. Doctor ",
                  style: TextStyle(color: cmain),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
