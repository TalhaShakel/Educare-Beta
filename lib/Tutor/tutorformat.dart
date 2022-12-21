import 'package:educare/Services/Service.dart';
import 'package:educare/bottom/tutorbottom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Home/TutorDashboard.dart';

class tutorformat extends StatefulWidget {
  const tutorformat({Key? key}) : super(key: key);

  @override
  State<tutorformat> createState() => _tutorState();
}

class _tutorState extends State<tutorformat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width / 20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("I am a Tutor",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width / 15,
                )),
            Text("Give lessons or manage booking\nwith your customer",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width / 28,
                )),
            Padding(
                padding:
                    EdgeInsets.only(top: MediaQuery.of(context).size.width / 5),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    border: Border.all(
                      color: Colors.deepPurpleAccent,
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(children: [
                      Text("Choose What Format You\nCan Teach",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.of(context).size.width / 20,
                          )),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 59,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(5),
                          child: Center(
                            child: Text("Visit home of students",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 25,
                                )),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffB3B4F7),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.39)),
                            border: Border.all(
                              color: Color(0xffB3B4F7),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 59,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(5),
                          child: Center(
                            child: Text("Students visit your home",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 25,
                                )),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.39)),
                            border: Border.all(
                              color: Color(0xffB3B4F7),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 59,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(5),
                          child: Center(
                            child: Text("Group classes somewhere",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 25,
                                )),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.39)),
                            border: Border.all(
                              color: Color(0xffB3B4F7),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 59,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(5),
                          child: Center(
                            child: Text("Distance online class",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 25,
                                )),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.39)),
                            border: Border.all(
                              color: Color(0xffB3B4F7),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 30,
                            right: 30,
                            top: 10,
                            bottom: MediaQuery.of(context).size.height / 13),
                        child: InkWell(
                            onTap: () async {
                              try {
                                EasyLoading.show();

                                tutordata = await firestore_get(
                                    "user", currentUserData.uid);
                                print(tutordata);
                                EasyLoading.dismiss();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ttbottom()));
                              } on FirebaseException catch (e) {
                                EasyLoading.dismiss();
                                Get.snackbar("${e.message}", "");
                              }
                            },
                            child: Container(
                              width: 343,
                              height: 67,
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
                            )),
                      ),
                    ]),
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
