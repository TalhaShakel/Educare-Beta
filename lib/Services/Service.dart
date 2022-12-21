import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:image_picker/image_picker.dart';

var fAuth = FirebaseAuth.instance;
firestore_set(collection, doc, set) async {
  doc != null
      ? await FirebaseFirestore.instance
          .collection(collection.toString())
          .doc(doc.toString())
          .set(set)
      : await FirebaseFirestore.instance
          .collection(collection.toString())
          .add(set);
}

firestore_Sec_set(collection, secCollection, doc, doc2, data,
    {bool update = false}) async {
  if (update == true) {
    print("using Update function");
    var dat = FirebaseFirestore.instance
        .collection("$collection")
        .doc("$doc")
        .collection("$secCollection")
        .doc("$doc2")
        .update(data);
    return dat;
  } else
    doc2 != null
        ? await FirebaseFirestore.instance
            .collection(collection.toString())
            .doc(doc.toString())
            .collection(secCollection)
            .doc(doc2)
            .set(data)
        : await FirebaseFirestore.instance
            .collection(collection.toString())
            .doc(doc.toString())
            .collection(secCollection)
            .doc()
            .set(data);
}

firestore_update(collection, doc, data) {
  var dat = FirebaseFirestore.instance
      .collection("$collection")
      .doc("$doc")
      .update(data);
  return dat;
}

addfav(List like, uid, collection, doc) async {
  if (like.contains(uid)) {
    await firestore_update(collection, doc, {
      "fav": FieldValue.arrayRemove([uid]),
    });
  } else {
    await firestore_update(collection, doc, {
      "fav": FieldValue.arrayUnion([uid]),
    });
  }
}

firestore_get(collection, doc) async {
  DocumentSnapshot userData =
      await FirebaseFirestore.instance.collection(collection).doc(doc).get();
  return userData;
}

pickImage(
  ImageSource source,
) async {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(
      source: source, imageQuality: 50, maxHeight: 600, maxWidth: 900);
  if (_file != null) {
    // name =   _file.name;
    return await _file.readAsBytes();
  }
  print('No Image Selected');
}

pick_File() async {
  // opens storage to pick files and the picked file or files
  // are assigned into result and if no file is chosen result is null.
  // you can also toggle "allowMultiple" true or false depending on your need
  try {
    FilePickerResult? result1 =
        await FilePicker.platform.pickFiles(allowMultiple: false);
    // FilePickerStatus.done;
    print(result1?.files.isNotEmpty);
    if (result1?.files.isNotEmpty == true) {
      // await Permission.storage.request();
      final result = await result1?.files;
      // print(result.first.name);
      // print(result.first.size);
      // print(result.first.path);
      return result;
    }
  } on PlatformException catch (e) {
    Get.snackbar("${e.message}", '');
  }
}

// pickImage(
//   ImageSource source,
// ) async {
//   final ImagePicker _imagePicker = ImagePicker();
//   XFile? _file = await _imagePicker.pickImage(
//       source: source, imageQuality: 50, maxHeight: 600, maxWidth: 900);
//   if (_file != null) {
//     // name =   _file.name;
//     return await _file.readAsBytes();
//   }
//   print('No Image Selected');
// }
// getUserModelById(String uid) async {
//     // UserModel? userModel;

//     // DocumentSnapshot docSnap =
//     //     await FirebaseFirestore.instance.collection("users").doc(uid).get();
//     DocumentSnapshot docSnap = await firestore_get("", uid);

//     if (docSnap.data() != null) {
//       // userModel = UserModel.fromMap(docSnap.data() as Map<String, dynamic>);
//     }

//     return userModel;
//   }
var currentUserData;
var tutordata;
