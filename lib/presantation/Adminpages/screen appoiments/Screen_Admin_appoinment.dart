import 'package:appoiment_docter/core/constands.dart';
import 'package:flutter/material.dart';

import 'package:simple_shadow/simple_shadow.dart';

import '../../../core/colors/colors.dart';
import '../appoinment info/appoinment_info.dart';

class AdminAppoinment extends StatelessWidget {
  const AdminAppoinment({super.key});

  // get mWhite => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Appoinmnet Request',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) {
                return SimpleShadow(
                  opacity: 0.11, // Default: 0.5
                  //color: mgreya, // Default: Black
                  offset: const Offset(
                    5,
                    6,
                  ), // Default: Offset(2, 2)
                  sigma: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 13, vertical: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const AdmnAppoimentInfo();
                          },
                        ));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          borderRadius: radius15,
                          color: cmain,
                        ),
                        height: 150,
                        child: Row(children: [
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: radius10,
                              ),
                              child: Image.asset('lib/assets/docter 1.png'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Docter',
                                      style: TextStyle(
                                          fontSize: 15, color: mgreyb),
                                    ),
                                    Text(
                                      'Dr.Jhony MBBS',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: mgreyb),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: mgreyb, borderRadius: radius5),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Text(
                                        'Accept ',
                                        style: TextStyle(color: mBlack),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: mgreyb, borderRadius: radius5),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 10),
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(color: mBlack),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              // Doctername(),
                              // Spacer(),
                              // Date(),
                              // TwoButtons()
                            ],
                          )
                        ]),
                      ),
                    ),
                  ),
                );
              },
              itemCount: 10),
        ),
      ],
    );
  }
}
