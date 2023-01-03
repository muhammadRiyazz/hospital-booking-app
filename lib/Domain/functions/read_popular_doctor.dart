import 'dart:developer';

import 'package:appoiment_docter/Domain/models/pupular_doctor_modal.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Stream<List<PopularDoctor>> readdata() {
  return FirebaseFirestore.instance
      .collection('Popular doctors')
      .snapshots()
      .map((snapshot) {
    log('vvv');

    return snapshot.docs.map((doc) {
      return PopularDoctor.fromJson(doc.data());
    }).toList();
  });
}

Stream<List<OurDoctor>> morereaddata() {
  return FirebaseFirestore.instance
      .collection('all doctors')
      .snapshots()
      .map((snapshot) {
    return snapshot.docs.map((doc) {
      return OurDoctor.fromJson(doc.data());
    }).toList();
  });
}
