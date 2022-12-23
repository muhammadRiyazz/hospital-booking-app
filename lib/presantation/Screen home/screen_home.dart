import 'package:appoiment_docter/core/colors/colors.dart';
import 'package:appoiment_docter/presantation/Screen%20home/widgets/categoreis.dart';
import 'package:appoiment_docter/presantation/Screen%20home/widgets/docters.dart';
import 'package:appoiment_docter/presantation/Screen%20home/widgets/health_news_part.dart';
import 'package:appoiment_docter/presantation/Screen%20home/widgets/title_part.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constands.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10, right: 23, left: 23),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const TitlePart(),
        const HealthNewsPart(),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Categoreis',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        const Categoreis(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Popular Docters',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Text(
              'See More',
              style: TextStyle(
                color: mBlue,
                fontSize: 15,
              ),
            ),
          ],
        ),
        hsizedbox10,
        const Docters(),
      ]),
    );
  }
}
