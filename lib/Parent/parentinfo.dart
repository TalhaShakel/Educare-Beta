import 'package:educare/Home/Dashboard.dart';
import 'package:educare/Services/Models.dart';
import 'package:educare/Services/Service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Student/Paymentscanqr.dart';
import '../bottom/bottom.dart';

class parentinfo extends StatefulWidget {
  const parentinfo({Key? key}) : super(key: key);

  @override
  State<parentinfo> createState() => _parentinfoState();
}

class _parentinfoState extends State<parentinfo> {
  var grade = TextEditingController();

  var childName = TextEditingController();

  var schoolAddress = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void validateAndSave() {
    FormState? form = _formKey.currentState;
    if (form!.validate()) {
      uploadParentData();
      print("uploaded");
    } else {
      print('Form is invalid');
    }
  }

  uploadParentData() async {
    try {
      EasyLoading.show();

      // firestore_Sec_set("user", "parent", currentUserData.uid,
      //     cccccccccccccc);
      ChildData newUser = ChildData(
        uid: currentUserData.uid.toString(),
        child: {},
        grade: grade.text.trim().toString(),
        childName: childName.text.trim().toString(),
        // userEmail: email.text.trim().toString(),
        schoolAddress: schoolAddress.text.trim().toString(),
        // vehicleInformation: false
      );
      await firestore_update("user", currentUserData.uid.toString(), {
        "parentchild": newUser.toMap(),
      });
      // await firestore_set("user", currentUserData.uid.toString(), {
      //   "parent": {
      //     "child": newUser.toMap(),
      //   }
      // });

      // await firestore_Sec_set("user", "parent", currentUserData.uid.toString(),
      //     currentUserData.uid.toString(), newUser.toMap(),
      //     update: true);

      print("Parent data save ");
      Get.to(() => pmbottom());
      EasyLoading.dismiss();
    } on FirebaseException catch (e) {
      EasyLoading.dismiss();
      print(e);
      Get.snackbar("${e.message}", "");
    } // Get.to(() => parentinfo());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width / 6),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  "I am a Parent",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.width / 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Manage payments or lessons for\n your child.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width / 28,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 12),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      border: Border.all(
                        color: Colors.green,
                        width: 2.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          Image.asset("assets/images/parent.png"),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text("Your Child name",
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                21,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 30, left: 30, top: 10),
                                child: Container(
                                  child: TextFormField(
                                      validator: (value) => value!.isEmpty
                                          ? 'This Field cannot be blank'
                                          : null,
                                      controller: childName,
                                      decoration: InputDecoration(
                                        hintText: "William ",
                                        fillColor: Colors.white,
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.blue,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.blue,
                                            width: 0.5,
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, top: 10),
                                child: Text("School",
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                21,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 30, left: 30, top: 10),
                                child: Container(
                                  child: TextFormField(
                                      validator: (value) => value!.isEmpty
                                          ? 'This Field cannot be blank'
                                          : null,
                                      controller: schoolAddress,
                                      decoration: InputDecoration(
                                        hintText: "My address is...",
                                        fillColor: Colors.white,
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.blue,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.blue,
                                            width: 0.5,
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, top: 10),
                                child: Text("Grade",
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                21,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 30, left: 30, top: 10),
                                child: Container(
                                  child: TextFormField(
                                      validator: (value) => value!.isEmpty
                                          ? 'This Field cannot be blank'
                                          : null,
                                      controller: grade,
                                      decoration: InputDecoration(
                                        hintText: "1st grade",
                                        fillColor: Colors.white,
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.blue,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.blue,
                                            width: 0.5,
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 30,
                              right: 30,
                              top: 20,
                              bottom: MediaQuery.of(context).size.height / 15,
                            ),
                            child: InkWell(
                              onTap: () {
                                validateAndSave();
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color(0xffFFCD32),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Text(
                                  "Next",
                                  style: GoogleFonts.almarai(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width / 20,
                                  ),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
