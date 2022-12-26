import 'dart:developer';

import 'package:appoiment_docter/core/colors/colors.dart';
import 'package:appoiment_docter/core/constands.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Adddoctor extends StatelessWidget {
  Adddoctor({super.key});
  final List<String> genderItems = [
    'Male',
    'Female',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: const Text(
                  'Add Docter',
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
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 70),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: radius20,
                        color: mgreya,
                      ),
                      //width: 200,
                    )),
              ),
              TextButton(
                  onPressed: () {},
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: radius10, color: cmain),
                    width: double.infinity,
                    height: 45,
                    child: const Center(
                        child: Text(
                      'Add Photo',
                      style: TextStyle(color: mWhite),
                    )),
                  )),
              const Mytextfield(
                firsttext: 'Doctor Name',
              ),
              const Mytextfield(
                firsttext: 'Category',
              ),
              Mytextfield(
                firsttext: 'Experiance',
              ),
              Mytextfield(
                firsttext: 'Petient count',
              ),
              Mytextfield(
                firsttext: 'About Doctor',
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: radius10, color: cmain),
                    width: double.infinity,
                    height: 45,
                    child: const Center(
                        child: Text(
                      'Conform',
                      style: TextStyle(color: mWhite),
                    )),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class Mytextfield extends StatelessWidget {
  const Mytextfield({
    required this.firsttext,
    Key? key,
  }) : super(key: key);
  final String firsttext;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          firsttext,
          style: const TextStyle(fontSize: 15, color: mGrey),
        ),
        subtitle: TextFormField(
          decoration: InputDecoration(hintText: ''),
        )
        // crossAxisAlignment: CrossAxisAlignment.start,
        // children: [

        // ],
        );
  }
}
