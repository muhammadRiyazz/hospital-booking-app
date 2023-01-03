import 'dart:developer';

import 'package:appoiment_docter/Domain/models/pupular_doctor_modal.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../presantation/Adminpages/screen main/screen main.dart';

alldoctors(
    {required doctornamecontroller,
    required aboutcontroller,
    required selectedValue,
    required expcontroller,
    required imgurl,
    required countcontroller,
    required id}) async {
  final mydoctor =
      await FirebaseFirestore.instance.collection('all doctors').doc(id);

  final modaldata = OurDoctor(
      id: doctornamecontroller.text,
      aboutDoctor: aboutcontroller.text,
      category: selectedValue!,
      doctorName: doctornamecontroller.text,
      experiance: int.parse(expcontroller.text),
      image: imgurl!,
      petientsCount: int.parse(countcontroller.text));

  final json = OurDoctor.toJson(
      aboutDoctor: modaldata.aboutDoctor,
      category: modaldata.category,
      doctorName: modaldata.doctorName,
      experiance: modaldata.experiance,
      petientsCount: modaldata.petientsCount,
      image: modaldata.image,
      id: modaldata.id);

  await mydoctor.set(json);
  log('add');

  //showcatetories.add(selectedValue!);
  //log(showcatetories.length.toString());
}
