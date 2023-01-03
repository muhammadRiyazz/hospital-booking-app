import 'dart:developer';

import 'package:appoiment_docter/Domain/functions/read_popular_doctor.dart';
import 'package:appoiment_docter/Domain/models/pupular_doctor_modal.dart';
import 'package:appoiment_docter/core/colors/colors.dart';
import 'package:appoiment_docter/core/constands.dart';
import 'package:appoiment_docter/presantation/User%20pages/secreen%20appoiments/screen_appoiment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../Adminpages/screen main/screen main.dart';
import '../screen aboutdocter/screen_about_docter.dart';
import '../screen time and date/screen_time_date.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});

  final List<String> catetories = [
    'Gynecologists',
    'Cardiologists',
    'Endocrinologists',
    'Gastroenterologists',
    'Nephrologists',
    'Urologists',
    'Pulmonologists',
    'Otolaryngologists',
    'Neurologists',
    'Psychiatrists',
    'Oncologists',
    'Radiologists',
    'Rheumatologists',
    'Anesthesiologists',
    'Ophthalmologist',
    'Dermatologist',
    'Pathologist',
    'Dermatology',
  ];

  int current = 0;

  PageController mycontroller = PageController();

  @override
  Widget build(BuildContext context) {
    //   log(showcatetories[0]);
    // log(showcatetories.length.toString());

    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 3, left: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: radius10,
                      color: mgreya,
                    ),
                    height: 50,
                    width: 50,
                    child: const Icon(
                      size: 15,
                      Icons.arrow_back_ios_new_sharp,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: radius30,
                            color: cmain,
                          ),
                          height: 40,
                          width: 40,
                          child: const Icon(
                            size: 29,
                            Icons.search,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      focusColor: mBlack,
                      border: const OutlineInputBorder(borderRadius: radius20),
                      hintText: 'Find Your Docter',
                    ),
                  ),
                ),
              ),
            ],
          ),
          // SizedBox(
          //   height: 70,
          //   child: ListView.builder(
          //     //controller: mycontroller,
          //     physics: const BouncingScrollPhysics(),
          //     scrollDirection: Axis.horizontal,
          //     itemCount: catetories.length,
          //     itemBuilder: (context, index) {
          //       return Column(
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: InkWell(
          //               onTap: () {
          //                 setState(() {
          //                   current = index;
          //                   mycontroller.jumpToPage(current);
          //                 });
          //               },
          //               child: SimpleShadow(
          //                 child: Container(
          //                   decoration: BoxDecoration(
          //                     borderRadius: radius10,
          //                     color: index == current ? cmain : mgreyb,
          //                   ),
          //                   // height: 20,
          //                   height: 40,

          //                   child: Center(
          //                       child: Padding(
          //                     padding: const EdgeInsets.all(8.0),
          //                     child: Text(
          //                       catetories[index].toUpperCase(),
          //                       style: TextStyle(
          //                           fontSize: current == index ? 16 : 15,
          //                           fontWeight: current == index
          //                               ? FontWeight.w500
          //                               : FontWeight.w400,
          //                           color: current == index ? mgreya : mBlack),
          //                     ),
          //                   )),
          //                 ),
          //               ),
          //             ),
          //           ),
          //           Visibility(
          //             visible: current == index,
          //             child: Container(
          //               height: 3,
          //               width: 30,
          //               decoration: const BoxDecoration(
          //                 borderRadius: radius15,
          //                 color: cmain,
          //               ),
          //             ),
          //           )
          //         ],
          //       );
          //     },
          //   ),
          // ),
          StreamBuilder(
              stream: morereaddata(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text('something wnt wrong'),
                  );
                } else if (snapshot.hasData) {
                  log("message");
                  final data = snapshot.data;
                  log(data!.length.toString());

                  return Expanded(
                    child: Ourpageview(
                      data: data,
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                //  PageView.builder(
                //   itemBuilder: (context, index) {
                //     return StreamBuilder(
                //         stream: morereaddata(category: catetories[index]),
                //         builder: (context, snapshot) {
                // if (snapshot.hasError) {
                //   const Center(
                //     child: Text('Something went worng'),
                //   );
                // } else if (snapshot.hasData) {
                // final data = snapshot.data;

                // } else {
                //   return const Center(
                //     child: CircularProgressIndicator(),
                //   );
                // }
              }),
        ]),
      ),
    );
  }
}

class Ourpageview extends StatelessWidget {
  const Ourpageview({
    Key? key,
    required this.data,
  }) : super(key: key);
  final List<OurDoctor> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        log(data.length.toString());
        return SimpleShadow(
          opacity: 0.6, // Default: 0.5
          color: mgreya, // Default: Black
          offset: const Offset(
            5,
            6,
          ), // Default: Offset(2, 2)
          sigma: 7,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AdoutDocter(
                      pagekey: 'all doctors',
                      indexdoctor: index,
                    );
                  },
                ));
              },
              child: Container(
                padding: const EdgeInsets.all(7),
                decoration: const BoxDecoration(
                  borderRadius: radius15,
                  color: mWhite,
                ),
                height: 140,
                child: Row(children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: radius10,
                        // color: mgreya,
                      ),
                      child: Image.network(
                        data[index].image,
                        //  fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      hsizedbox5,
                      Doctertxt(data: data, index: index),
                      // Doctername(),
                      const Spacer(),

                      // Date(),
                      // TwoButtons()
                      const ClickButton(),
                    ],
                  )
                ]),
              ),
            ),
          ),
        );
      },
      itemCount: data.length,
    );
  }
}

class Doctertxt extends StatelessWidget {
  const Doctertxt({Key? key, required this.data, required this.index})
      : super(key: key);
  final List<OurDoctor> data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dr. ${data[index].doctorName.toUpperCase()} MBBS',
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          Text(
            data[index].category,
            style: const TextStyle(fontSize: 15, color: mGreyc),
          ),
        ],
      ),
    );
  }
}

class ClickButton extends StatelessWidget {
  const ClickButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return ScreenDateTime();
          },
        ));
      },
      child: Container(
        decoration: const BoxDecoration(color: cmain, borderRadius: radius5),
        padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 10),
        child: const Text(
          'Appoiment',
          style: TextStyle(color: mWhite),
        ),
      ),
    );
  }
}
