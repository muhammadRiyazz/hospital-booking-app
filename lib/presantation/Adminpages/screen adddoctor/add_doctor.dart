import 'dart:developer';

import 'package:appoiment_docter/Domain/functions/add_popular_doctor.dart';
import 'package:appoiment_docter/Domain/models/pupular_doctor_modal.dart';
import 'package:appoiment_docter/core/colors/colors.dart';
import 'package:appoiment_docter/core/constands.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class Adddoctor extends StatelessWidget {
  Adddoctor({
    super.key,
  });
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
    "Dermatologist,",
    'Pathologist',
    "Dermatology,",
  ];
  String? selectedValue;

  TextEditingController doctornamecontroller = TextEditingController();
  TextEditingController expcontroller = TextEditingController();
  TextEditingController countcontroller = TextEditingController();
  TextEditingController aboutcontroller = TextEditingController();

  String? imagepath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 70),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: radius20,
                      color: mgreya,
                    ),
                    //width: 200,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () async {
                    imagepath = await addimage();
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: radius10, color: cmain),
                    width: double.infinity,
                    height: 45,
                    child: const Center(
                        child: Text(
                      'Add Photo',
                      style: TextStyle(color: mWhite),
                    )),
                  )),
              Mytextfield(
                firsttext: 'Doctor Name',
                myTextEditingController: doctornamecontroller,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: DropdownButtonFormField2(
                  buttonHeight: 40,
                  buttonPadding: const EdgeInsets.only(left: 0, right: 10),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),

                  hint: const Text(
                    'Select Doctor Catogories',
                    style: TextStyle(fontSize: 14),
                  ),
                  decoration: const InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                  items: catetories
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    selectedValue = value.toString();
                  },
                  // onSaved: (value) {
                  //   selectedValue = value.toString();
                  // },
                  isExpanded: true,
                ),
              ),
              Mytextfield(
                firsttext: 'Experiance',
                myTextEditingController: expcontroller,
              ),
              Mytextfield(
                firsttext: 'Petient count',
                myTextEditingController: countcontroller,
              ),
              Mytextfield(
                firsttext: 'About Doctor',
                myTextEditingController: aboutcontroller,
              ),
              TextButton(
                onPressed: () async {
                  Navigator.pop(context);
                  log(imagepath!);
                  log(aboutcontroller.text);
                  log(countcontroller.text);
                  log(doctornamecontroller.text);
                  log(expcontroller.text);
                  log(selectedValue!);
                  await createdoctor(
                      dctrimage: imagepath!,
                      aboutcontroller: aboutcontroller,
                      countcontroller: countcontroller,
                      doctornamecontroller: doctornamecontroller,
                      expcontroller: expcontroller,
                      selectedValue: selectedValue!);
                },
                child: Container(
                  decoration:
                      const BoxDecoration(borderRadius: radius10, color: cmain),
                  width: double.infinity,
                  height: 45,
                  child: const Center(
                      child: Text(
                    'Conform',
                    style: TextStyle(color: mWhite),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<String> addimage() async {
    log('call');
    final file = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (file == null) {
      return '';
    }
    final imagefile = file.path;
    log(imagefile);
    return imagefile;
  }
}

class Mytextfield extends StatelessWidget {
  const Mytextfield({
    required this.firsttext,
    required this.myTextEditingController,
    Key? key,
  }) : super(key: key);
  final String firsttext;
  final TextEditingController myTextEditingController;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          firsttext,
          style: const TextStyle(fontSize: 15, color: mGrey),
        ),
        subtitle: TextFormField(
          controller: myTextEditingController,
          decoration: const InputDecoration(hintText: ''),
        ));
  }
}
