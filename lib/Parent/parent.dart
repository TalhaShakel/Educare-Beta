import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:educare/Parent/parentinfo.dart';
import 'package:educare/Services/Models.dart';
import 'package:educare/Services/Service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class parent extends StatefulWidget {
  const parent({Key? key}) : super(key: key);
  @override
  State<parent> createState() => _parentState();
}

class _parentState extends State<parent> {
  Uint8List? image;
  var searching = TextEditingController();
  var name = TextEditingController();

  var address = TextEditingController();
  void validateAndSave() {
    FormState? form = _formKey.currentState;
    if (form!.validate()) {
      uploadParentData();
      print('Form is valid');
    } else {
      print('Form is invalid');
    }
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  uploadParentData() async {
    try {
      EasyLoading.show();

      // firestore_Sec_set("user", "parent", currentUserData.uid,
      //     cccccccccccccc);
      ParentsData newUser = ParentsData(
        uid: currentUserData.uid.toString(),
        address: address.text.trim().toString(),
        fullName: name.text.trim().toString(),
        // userEmail: email.text.trim().toString(),
        search: searching.text.trim().toString(),
        // vehicleInformation: false
      );
      await firestore_update(
          "user", currentUserData.uid.toString(), {"parent": newUser.toMap()});

            await firestore_update(
          "user", currentUserData.uid.toString(), {"submitdata": true});
      // await firestore_Sec_set("user", "parent", currentUserData.uid.toString(),
      //     currentUserData.uid.toString(), newUser.toMap());

      print("Parent data save ");
      Get.to(() => parentinfo());
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I am a Parent",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 15,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text("Manage payments or lessons for",
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width / 25,
                      )),
                ),
                Text("your child.",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width / 25,
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
                        color: Colors.green,
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
                                                    "assets/images/img_3.png",
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
                          //       color: Colors.green,
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
                                ),
                              ),
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
                                  controller: address,
                                  decoration: InputDecoration(
                                    hintText: "My address is...",
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
                                  controller: searching,
                                  decoration: InputDecoration(
                                    hintText: "I am searching for ...",
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
                              bottom: MediaQuery.of(context).size.height / 14,
                            ),
                            child: InkWell(
                              onTap: () {
                                validateAndSave();
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=> ()));
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
