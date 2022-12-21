import 'package:educare/Login/Login.dart';
import 'package:educare/Services/Models.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Services/Service.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  var email = TextEditingController();

  var phoneNumber = TextEditingController();

  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFFF5),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width / 100,
                  left: MediaQuery.of(context).size.width / 4,
                ),
                child: Image(
                  image: AssetImage("assets/images/signupillistration.png"),
                  width: MediaQuery.of(context).size.width / 0.4,
                  height: MediaQuery.of(context).size.height / 3.2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 30,
                  left: 30,
                ),
                child: Container(
                  child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        hintText: "Email",
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
                padding: const EdgeInsets.only(right: 30, left: 30, top: 20),
                child: Container(
                  child: TextFormField(
                      controller: phoneNumber,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Phone Number",
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
                padding: const EdgeInsets.only(right: 30, left: 30, top: 20),
                child: Container(
                  child: TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                        hintText: "Password",
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
            ],
          ),
          GestureDetector(
            onTap: () async {
              try {
                EasyLoading.show();
                print("User register startd");
                UserCredential credential =
                    await fAuth.createUserWithEmailAndPassword(
                        email: email.text.trim().toString(),
                        password: password.text.trim().toString());
                UserModel newUser = UserModel(
                    uid: credential.user!.uid,
                    password: password.text.trim().toString(),
                    // fullName: name.text.trim().toString(),
                    userEmail: email.text.trim().toString(),
                    userPhone: phoneNumber.text.trim().toString(),
                    vehicleInformation: false);
                await firestore_set(
                    "user", credential.user!.uid, newUser.toMap());
                EasyLoading.dismiss();
                print("New User Created!");

                EasyLoading.dismiss();
                Get.to(() => login());
              } on FirebaseException catch (e) {
                EasyLoading.dismiss();
                print(e);
                Get.snackbar("${e.message}", "");
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xffFFCD32),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width / 20,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ),
          Column(
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text("Already have an account?",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width / 28,
                    )),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xff383838),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 28,
                          color: Colors.white),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
