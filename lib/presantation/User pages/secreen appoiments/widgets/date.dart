import 'package:flutter/material.dart';

import '../../../../core/colors/colors.dart';

class Date extends StatelessWidget {
  const Date({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Date',
            style: TextStyle(fontSize: 15, color: mGrey),
          ),
          Text(
            '23 march 2022',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
