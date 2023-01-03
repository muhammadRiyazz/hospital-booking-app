import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

Future<String> uploadimg({required imagefile}) async {
  log("upldimgcall");
  if (imagefile == null) {
    return "";
  }
  final storepath = 'files/${imagefile!.name}';
  final img = File(imagefile!.path);

  final ref = FirebaseStorage.instance.ref().child(storepath);
  log("not null 2");

  final task = ref.putFile(img);
  log("not null");

  final snapshot = await task.whenComplete(() {});
  final url = await snapshot.ref.getDownloadURL();
  log(url);
  return url;
}
