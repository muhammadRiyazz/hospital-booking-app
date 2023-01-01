import 'dart:developer';

import 'package:appoiment_docter/Domain/models/pupular_doctor_modal.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

Future createdoctor({
  required TextEditingController aboutcontroller,
  required String selectedValue,
  required TextEditingController doctornamecontroller,
  required TextEditingController expcontroller,
  required TextEditingController countcontroller,
  required String dctrimage,
}) async {
  log('function call/.................................');
  final Populardoctorfirebasedoc =
      FirebaseFirestore.instance.collection('Popular doctors').doc();
  log(dctrimage);
  log(aboutcontroller.text);
  log(selectedValue);
  log(doctornamecontroller.text);
  log(expcontroller.text);
  log(countcontroller.text);
  final mypopulardictor = PopularDoctor(
    image: dctrimage,
    id: Populardoctorfirebasedoc.id,
    aboutDoctor: aboutcontroller.text,
    category: selectedValue.toString(),
    doctorName: doctornamecontroller.text,
    experiance: int.parse(expcontroller.text),
    petientsCount: int.parse(countcontroller.text),
  );
  log('call set 2');
  final json = PopularDoctor.toJson(
      image: mypopulardictor.image,
      id: mypopulardictor.id,
      aboutDoctor: mypopulardictor.aboutDoctor,
      category: mypopulardictor.category,
      doctorName: mypopulardictor.doctorName,
      experiance: mypopulardictor.experiance,
      petientsCount: mypopulardictor.experiance);
  log('call set 3');
  await Populardoctorfirebasedoc.set(json);
  log('call set');
}
