import 'package:appoiment_docter/core/colors/colors.dart';
import 'package:appoiment_docter/core/constands.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class Categoreis extends StatelessWidget {
  Categoreis({
    Key? key,
  }) : super(key: key);

  List<String> catagoreisimg = [
    "lib/assets/Vector.png",
    "lib/assets/Vector b.png",
    "lib/assets/Vector a.png",
    "lib/assets/Vector  v.png",
    "lib/assets/Subtract.png",
    "lib/assets/Vector b.png",
    "lib/assets/Vector a.png",
    "lib/assets/Vector  v.png",
  ];

  @override
  Widget build(BuildContext context) {
    final msize = MediaQuery.of(context).size;
    return SizedBox(
      height: msize.height * 0.15,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SimpleShadow(
                    opacity: 0.6, // Default: 0.5
                    color: const Color.fromARGB(
                        255, 238, 238, 238), // Default: Black
                    offset: const Offset(
                      50,
                      5,
                    ), // Default: Offset(2, 2)
                    sigma: 7,
                    child: Container(
                      padding: const EdgeInsets.all(23),
                      decoration: const BoxDecoration(
                        color: mWhite,
                        borderRadius: radius20,
                      ),
                      height: msize.height * 0.10,
                      width: msize.width * 0.21,
                      child: Image.asset(catagoreisimg[index]),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Cardiol',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 0,
            );
          },
          itemCount: catagoreisimg.length),
    );
  }
}
