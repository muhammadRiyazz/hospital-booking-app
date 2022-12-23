import 'package:appoiment_docter/core/colors/colors.dart';
import 'package:appoiment_docter/core/constands.dart';
import 'package:flutter/material.dart';

class TitlePart extends StatelessWidget {
  const TitlePart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              decoration:
                  const BoxDecoration(color: mgreya, borderRadius: radius15),
              padding: const EdgeInsets.all(4),
              child: const Icon(
                Icons.account_circle,
                size: 40,
                color: Color.fromARGB(255, 98, 96, 96),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Hii RIYAZ....👋",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Find Your Docter",
                style: TextStyle(fontSize: 15, color: mGrey),
              )
            ],
          ),
          Expanded(
            child: Container(
                // color: Colors.amber,
                ),
          ),
        ]);
  }
}
