import 'package:educare/Search/search.dart';
import 'package:educare/Services/Models.dart';
import 'package:educare/Services/Service.dart';
import 'package:educare/Tutor/tutorinfo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class tutor extends StatefulWidget {
  const tutor({Key? key}) : super(key: key);

  @override
  State<tutor> createState() => _tutorState();
}

class _tutorState extends State<tutor> {
  Uint8List? image;
  var name = TextEditingController();

  var teachiong = TextEditingController();

  var experience = TextEditingController();
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
      TutorData tutor = TutorData(
          teaching: teachiong.text.toString().trim(),
          // child: {},
          fullName: name.text.toString().trim(),
          experience: experience.text.toString().trim());
      await firestore_update(
          "user", currentUserData.uid.toString(), {"tutor": tutor.toMap()});

            await firestore_update(
          "user", currentUserData.uid.toString(), {"submitdata": true});
      // await firestore_Sec_set("user", "tutor", currentUserData.uid.toString(),
      //     currentUserData.uid.toString(), tutor.toMap());
      EasyLoading.dismiss();
      Get.to(() => tutorinfo());
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
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width / 6),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          
                          GestureDetector(
                              onTap: () async {
                                Uint8List? img =
                                    await pickImage(ImageSource.gallery);
                                if (img != null) {
                                  setState(() {
                                    image = img;
                                  });
                                }
                              },
                              child: Container(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    image == null
                                        ? Container(
                                            decoration: BoxDecoration(
                                              color: const Color(0xff7c94b6),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50.0)),
                                              border: Border.all(
                                                color: Colors.deepPurpleAccent,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: CircleAvatar(
                                                radius: 35,
                                                backgroundColor:
                                                    Colors.transparent,
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "assets/images/img_2.png",
                                                    fit: BoxFit.cover,
                                                    width: 102,
                                                    height: 102,
                                                  ),
                                                )),
                                          )
                                        : Container(
                                            decoration: BoxDecoration(
                                              color: const Color(0xff7c94b6),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50.0)),
                                              border: Border.all(
                                                color: Colors.deepPurpleAccent,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: CircleAvatar(
                                              radius: 35,
                                              backgroundColor:
                                                  Colors.transparent,
                                              child: ClipOval(
                                                child: Image.memory(
                                                  image!,
                                                  fit: BoxFit.cover,
                                                  width: 102,
                                                  height: 102,
                                                ),
                                              ),
                                            ),
                                          ),
                                  ]))),

                          // Container(
                          //   width: 70.0,
                          //   height: 70.0,
                          //   decoration: BoxDecoration(
                          //     color: const Color(0xff7c94b6),
                          //     image: DecorationImage(
                          //       image: AssetImage("assets/images/img_3.png"),
                          //       fit: BoxFit.cover,
                          //     ),
                          //     borderRadius:
                          //         BorderRadius.all(Radius.circular(50.0)),
                          //     border: Border.all(
                          //       color: Colors.deepPurpleAccent,
                          //       width: 2.0,
                          //     ),
                          //   ),
                          // ),
                          Text("Choose Avatar",
                              style: GoogleFonts.poppins(
                                fontSize:
                                    MediaQuery.of(context).size.width / 28,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 30, left: 30, top: 30),
                            child: Container(
                              child: TextFormField(
                                  validator: (value) => value!.isEmpty
                                      ? 'This Field cannot be blank'
                                      : null,
                                  controller: name,
                                  decoration: InputDecoration(
                                    hintText: "My name is ",
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
                                  validator: (value) => value!.isEmpty
                                      ? 'This Field cannot be blank'
                                      : null,
                                  controller: teachiong,
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
                                  validator: (value) => value!.isEmpty
                                      ? 'This Field cannot be blank'
                                      : null,
                                  controller: experience,
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
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 20, bottom: 70),
                            child: InkWell(
                              onTap: () {
                                validateAndSave();
                                // Navigator.push(scontext) => tutorinfo()));
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
