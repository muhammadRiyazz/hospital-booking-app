import 'package:appoiment_docter/core/colors/colors.dart';
import 'package:appoiment_docter/core/constands.dart';
import 'package:appoiment_docter/presantation/screen%20aboutdocter/screen_about_docter.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class Docters extends StatelessWidget {
  const Docters({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mysize = MediaQuery.of(context).size;

    return Expanded(
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SimpleShadow(
              opacity: 0.6, // Default: 0.5
              color: mgreya, // Default: Black
              offset: const Offset(
                5,
                5,
              ), // Default: Offset(2, 2)
              sigma: 7,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const AdoutDocter();
                    },
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: mWhite, borderRadius: radius10),
                    width: mysize.width * 0.44,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                                // color: mgreya,
                                borderRadius: radius10),
                            child: Image.asset('lib/assets/docter 1.png'),
                          ),
                        ),
                        hsizedbox10,
                        const Text(
                          'Dr.Jhony MBBS',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        hsizedbox2,
                        const Text(
                          'Cardiolagist',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: mGrey),
                        ),
                        hsizedbox5,
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            decoration: const BoxDecoration(
                                color: cmain, borderRadius: radius5),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 35, vertical: 10),
                            child: const Text(
                              'Appoment',
                              style: TextStyle(color: mWhite),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 15,
            );
          },
          itemCount: 5),
    );
  }
}
