import 'package:appoiment_docter/presantation/Adminpages/screen%20adddoctor/add_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constands.dart';
import '../Dctor info/docter_info.dart';

class Populardoctor extends StatelessWidget {
  const Populardoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: const Text(
                'Popular Doctors',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: radius10,
                    color: mgreya,
                  ),
                  height: 40,
                  width: 40,
                  child: const Icon(
                    size: 15,
                    Icons.arrow_back_ios_new_sharp,
                    color: Colors.black,
                  ),
                ),
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
                                return const InfoDocter();
                              },
                            ));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(7),
                            decoration: const BoxDecoration(
                              borderRadius: radius15,
                              color: mWhite,
                            ),
                            height: 110,
                            child: Row(children: [
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: radius10,

                                    //color: mgreya
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Docter',
                                          style: TextStyle(
                                              fontSize: 15, color: mGrey),
                                        ),
                                        Text(
                                          'Dr.Jhony MBBS',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                            builder: (context) {
                                              return Adddoctor();
                                            },
                                          ));
                                        },
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              color: cmain,
                                              borderRadius: radius5),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 10),
                                          child: const Text(
                                            'Edit',
                                            style: TextStyle(color: mWhite),
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              color: cmain,
                                              borderRadius: radius5),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25, vertical: 10),
                                          child: const Text(
                                            'Delete',
                                            style: TextStyle(color: mWhite),
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
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Adddoctor();
                  },
                ));
              },
              child: Container(
                decoration:
                    const BoxDecoration(borderRadius: radius10, color: cmain),
                width: double.infinity,
                height: 50,
                child: const Center(
                  child: Text(
                    'Add pupular doctor',
                    style: TextStyle(color: mWhite),
                  ),
                ),
              ),
            ),
            hsizedbox15
          ],
        ),
      ),
    );
  }
}
