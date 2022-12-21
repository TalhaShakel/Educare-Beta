import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:educare/Services/Models.dart';
import 'package:educare/Services/Service.dart';
import 'package:educare/Student/student.dart';
import 'package:educare/Tutor/tutor.dart';
import 'package:educare/bottom/bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../Parent/parent.dart';

class areyou extends StatefulWidget {
  areyou({Key? key}) : super(key: key);

  @override
  State<areyou> createState() => _areyouState();
}

class _areyouState extends State<areyou> {
  checkdataS() async {
    try {
      EasyLoading.show();
      var document = await firestore_get("user", currentUserData.uid);
      print(document.toString());
      if (document["student"]["submitdata"] == false) {
        Get.to(() => pmbottom());
      } else {
        Get.to(() => student());
      }
      ;
      EasyLoading.dismiss();
    } on FirebaseException catch (e) {
      EasyLoading.dismiss();
      print(e);
      Get.snackbar("${e.message}}", "");
    }
  }

  checkdataP() async {
    try {
      EasyLoading.show();
      var document = await firestore_get("user", currentUserData.uid);
      print(document.toString());
      if (document["parent"]["submitdata"] == true) {
        Get.to(() => pmbottom());
      } else {
        Get.to(() => parent());
      }

      EasyLoading.dismiss();
    } on FirebaseException catch (e) {
      EasyLoading.dismiss();
      print(e);
      Get.snackbar("${e.message}}", "");
    }
  }

  checkdataT() async {
    try {
      EasyLoading.show();
      var document = await firestore_get("user", currentUserData.uid);
      print(document.toString());
      if (document["tutor"]["submitdata"] == true) {
        Get.to(() => pmbottom());
      } else {
        Get.to(() => tutor());
      }

      EasyLoading.dismiss();
    } on FirebaseException catch (e) {
      EasyLoading.dismiss();
      print(e);
      Get.snackbar("${e.message}}", "");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFFF5),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.height / 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Are you...",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width / 12,
                      )),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 80,
                    ),
                    child: Text(
                        "Create a unique emotional story that describes\nbetter than words",
                        style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width / 28,
                        )),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 10),
                  child: InkWell(
                    onTap: () {
                      checkdataS();
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.yellow, width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/img.png",
                                        width: 50, height: 50),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Student",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width / 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 10),
                  child: InkWell(
                    onTap: () async {
                      ////////////////////////////////
                      checkdataP();

                      //////////////////////////////////////
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => parent()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.green, width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/img_1.png",
                                      width: 50, height: 50),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Parent",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width / 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 10),
                  child: InkWell(
                    onTap: () async {
                      checkdataT();

                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => tutor()));
                    },
                    child: Container(
                      width: Get.width,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.deepPurpleAccent, width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Color(0xffB3B4F7),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/img_2.png",
                                      width: 50, height: 50),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Tutor",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width / 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30, top: 10),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 343,
                      height: 67,
                      decoration: BoxDecoration(
                          color: Color(0xffFFCD32),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        "Sign Up",
                        style: GoogleFonts.almarai(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width / 20,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
