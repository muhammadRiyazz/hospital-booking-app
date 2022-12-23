import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class Doctername extends StatelessWidget {
  const Doctername({
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
            'Docter',
            style: TextStyle(fontSize: 15, color: mGrey),
          ),
          Text(
            'Dr.Jhony MBBS',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
