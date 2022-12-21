import 'package:educare/Services/Models.dart';
import 'package:educare/Services/Service.dart';
import 'package:educare/Tutor/tutoroptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class tutorinfo extends StatefulWidget {
  // TutorData tutor;
  tutorinfo({Key? key}) : super(key: key);

  @override
  State<tutorinfo> createState() => _tutorinfoState();
}

class _tutorinfoState extends State<tutorinfo> {
  var age2 = TextEditingController();

  var major = TextEditingController();

  var teaching2 = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void validateAndSave() {
    FormState? form = _formKey.currentState;
    if (form!.validate()) {
      uploadTutorData();
      print('Form is valid');
    } else {
      print('Form is invalid');
    }
  }

  uploadTutorData() async {
    try {
      EasyLoading.show();
      TutorData2 tutor2 = TutorData2(
          teaching2: teaching2.text.toString().trim(),
          major: major.text.toString().trim(),
          experience2: age2.text.toString().trim());
      await firestore_update("user", currentUserData.uid.toString(), {
        "tutorchild": tutor2.toMap(),
        // "experience2": teaching2.text.toString().trim(),

        // "major": major.text.toString().trim(),
        // "teaching2": age2.text.toString().trim()
      });
      // await firestore_Sec_set("user", "tutor", currentUserData.uid.toString(),
      //     currentUserData.uid.toString(), tutor2.toMap(),
      //     update: true);
      EasyLoading.dismiss();
      Get.to(() => tutoroption());
    } on FirebaseException catch (e) {
      EasyLoading.dismiss();
      print(e);
      Get.snackbar("${e.message}", "");
    }
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
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width / 24),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text("I am a Tutor",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width / 15,
                    )),
                Text("Give lessons or manage booking with\nyour customer",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width / 28,
                    )),
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
                        color: Colors.deepPurpleAccent,
                        width: 2.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/img_5.png",
                            width: MediaQuery.of(context).size.width / 1.5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 30, left: 30, top: 0),
                            child: Container(
                              child: TextFormField(
                                  controller: major,
                                  validator: (value) => value!.isEmpty
                                      ? 'This Field cannot be blank'
                                      : null,
                                  decoration: InputDecoration(
                                    hintText: "My Major is... ",
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 0.5,
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 30, left: 30, top: 30),
                            child: Container(
                              child: TextFormField(
                                  controller: teaching2,
                                  validator: (value) => value!.isEmpty
                                      ? 'This Field cannot be blank'
                                      : null,
                                  decoration: InputDecoration(
                                    hintText: "I am teaching...",
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 0.5,
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 30, left: 30, top: 30),
                            child: Container(
                              child: TextFormField(
                                  controller: age2,
                                  validator: (value) => value!.isEmpty
                                      ? 'This Field cannot be blank'
                                      : null,
                                  decoration: InputDecoration(
                                    hintText: "I teach ages ...",
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 0.5,
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 30,
                                right: 30,
                                top: 20,
                                bottom:
                                    MediaQuery.of(context).size.height / 15),
                            child: InkWell(
                              onTap: () {
                                validateAndSave();
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => tutoroption()));
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
