import 'package:educare/Onboarding/areyou.dart';
import 'package:educare/Services/Models.dart';
import 'package:educare/Services/Service.dart';
import 'package:educare/SignUp/SignUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:gradient_borders/gradient_borders.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool check = false;
  var password = TextEditingController();
  var email = TextEditingController();

  signin() async {
    try {
      EasyLoading.show();
      UserCredential credential = await fAuth.signInWithEmailAndPassword(
          email: email.text.trim().toString(),
          password: password.text.trim().toString());
      var document = await firestore_get("user", "${credential.user!.uid}");
      print(document.toString());

      UserModel userdata =
          UserModel.fromMap(document.data() as Map<String, dynamic>);
      currentUserData = userdata;
      EasyLoading.dismiss();
      Get.to(() => areyou());
      print(UserModel());
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 6,
                    bottom: MediaQuery.of(context).size.width / 40,
                  ),
                  child: Image(
                    image: AssetImage("assets/images/logo.png"),
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                ),
                Text(
                  "Welcome Back",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 15,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Theme(
                    data: ThemeData(unselectedWidgetColor: Color(0xffFFCD32)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Checkbox(
                        value: check,
                        onChanged: (chekvalueww) {
                          setState(() {
                            check = chekvalueww!;
                          });
                        },
                      ),
                    ),
                  ),
                  Text("Remember me",
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width / 28,
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                            isScrollControlled: true,
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0)),
                            ),
                            builder: (BuildContext context) {
                              return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Container(
                                        child: Wrap(
                                      children: <Widget>[
                                        Image.asset(
                                            "assets/images/btmsheetimage.png"),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Center(
                                          child: Column(
                                            children: [
                                              Text(
                                                "Email Verification",
                                                style: GoogleFonts.poppins(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                "Enter the email address associated\nwith your account.",
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.poppins(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          28,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                10,
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                20,
                                            right: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                20,
                                            bottom: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                20,
                                          ),
                                          child: TextFormField(
                                              decoration: InputDecoration(
                                            hintText: "New password",
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
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                20,
                                            right: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                20,
                                            bottom: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                10,
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              showModalBottomSheet<void>(
                                                isScrollControlled: true,
                                                context: context,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  30.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  30.0)),
                                                ),
                                                builder:
                                                    (BuildContext context) {
                                                  return Padding(
                                                    padding:
                                                        MediaQuery.of(context)
                                                            .viewInsets,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 30),
                                                      child: Container(
                                                          child: Wrap(
                                                        children: <Widget>[
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          Center(
                                                            child: Column(
                                                              children: [
                                                                Text(
                                                                  "Get Your Code",
                                                                  style: GoogleFonts
                                                                      .poppins(
                                                                    fontSize: MediaQuery.of(context)
                                                                            .size
                                                                            .width /
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  "Please enter the 4 digit code sent to your\nemail address.",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: GoogleFonts
                                                                      .poppins(
                                                                    fontSize: MediaQuery.of(context)
                                                                            .size
                                                                            .width /
                                                                        28,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                              top: 60),
                                                                  child: Pinput(
                                                                    defaultPinTheme:
                                                                        PinTheme(
                                                                      textStyle: TextStyle(
                                                                          fontSize:
                                                                              25,
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                      height:
                                                                          70,
                                                                      width: 70,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        border:
                                                                            const GradientBoxBorder(
                                                                          gradient:
                                                                              LinearGradient(
                                                                            begin:
                                                                                Alignment.topLeft,
                                                                            colors: [
                                                                              Colors.blue,
                                                                              Colors.blue
                                                                            ],
                                                                          ),
                                                                          width:
                                                                              0.5,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(10),
                                                                      ),
                                                                    ),
                                                                    length: 4,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      top: 30),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                          "Don't receive code yet?\t",
                                                                          style:
                                                                              GoogleFonts.poppins()),
                                                                      Text(
                                                                        "Resend",
                                                                        style: GoogleFonts.poppins(
                                                                            color:
                                                                                Color(0xffFFCD32)),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 30,
                                                                      right: 30,
                                                                      top: 20),
                                                                  child:
                                                                      InkWell(
                                                                    onTap: () {
                                                                      showModalBottomSheet<
                                                                          void>(
                                                                        isScrollControlled:
                                                                            true,
                                                                        context:
                                                                            context,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius: BorderRadius.only(
                                                                              topLeft: Radius.circular(30.0),
                                                                              topRight: Radius.circular(30.0)),
                                                                        ),
                                                                        builder:
                                                                            (BuildContext
                                                                                context) {
                                                                          return Padding(
                                                                            padding:
                                                                                MediaQuery.of(context).viewInsets,
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.only(top: 30),
                                                                              child: Container(
                                                                                  child: Wrap(
                                                                                children: <Widget>[
                                                                                  SizedBox(
                                                                                    height: 20,
                                                                                  ),
                                                                                  Center(
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Text(
                                                                                          "Reset Your Password",
                                                                                          style: GoogleFonts.poppins(
                                                                                            fontSize: MediaQuery.of(context).size.width / 16,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          "Your new password must be different from\npreviously used password.",
                                                                                          textAlign: TextAlign.center,
                                                                                          style: GoogleFonts.poppins(
                                                                                            fontSize: MediaQuery.of(context).size.width / 28,
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                            top: MediaQuery.of(context).size.width / 20,
                                                                                            left: MediaQuery.of(context).size.width / 20,
                                                                                            right: MediaQuery.of(context).size.width / 20,
                                                                                          ),
                                                                                          child: TextFormField(
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
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                            top: MediaQuery.of(context).size.width / 20,
                                                                                            left: MediaQuery.of(context).size.width / 20,
                                                                                            right: MediaQuery.of(context).size.width / 20,
                                                                                          ),
                                                                                          child: TextFormField(
                                                                                              decoration: InputDecoration(
                                                                                            hintText: "New password",
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
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                            top: MediaQuery.of(context).size.width / 20,
                                                                                            left: MediaQuery.of(context).size.width / 20,
                                                                                            right: MediaQuery.of(context).size.width / 20,
                                                                                          ),
                                                                                          child: TextFormField(
                                                                                              decoration: InputDecoration(
                                                                                            hintText: "Confirm password",
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
                                                                                        //3rdpopup button
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                            top: MediaQuery.of(context).size.width / 10,
                                                                                            left: MediaQuery.of(context).size.width / 35,
                                                                                            right: MediaQuery.of(context).size.width / 35,
                                                                                          ),
                                                                                          child: InkWell(
                                                                                            onTap: () {},
                                                                                            child: Container(
                                                                                              width: MediaQuery.of(context).size.width,
                                                                                              height: 60,
                                                                                              decoration: BoxDecoration(color: Color(0xffFFCD32), borderRadius: BorderRadius.circular(10)),
                                                                                              child: Center(
                                                                                                  child: Text(
                                                                                                "Continue",
                                                                                                style: GoogleFonts.almarai(color: Colors.white),
                                                                                              )),
                                                                                            ),
                                                                                          ),
                                                                                        ),

                                                                                        Padding(
                                                                                          padding: const EdgeInsets.only(top: 30),
                                                                                          child: Row(
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            children: [
                                                                                              Text("Don't receive code yet?\t", style: GoogleFonts.poppins()),
                                                                                              Text(
                                                                                                "Resend",
                                                                                                style: GoogleFonts.poppins(color: Color(0xffFFCD32)),
                                                                                              )
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        SizedBox(
                                                                                          height: MediaQuery.of(context).size.width / 15,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              )),
                                                                            ),
                                                                          );
                                                                        },
                                                                      );
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width,
                                                                      height:
                                                                          60,
                                                                      decoration: BoxDecoration(
                                                                          color: Color(
                                                                              0xffFFCD32),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10)),
                                                                      child: Center(
                                                                          child: Text(
                                                                        "Continue",
                                                                        style: GoogleFonts.almarai(
                                                                            color:
                                                                                Colors.white),
                                                                      )),
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width /
                                                                      15,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 60,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffFFCD32),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Center(
                                                  child: Text(
                                                "Continue",
                                                style: GoogleFonts.almarai(
                                                  color: Colors.white,
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          20,
                                                ),
                                              )),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                  ));
                            },
                          );
                        },
                        child: Text(
                          "Forget Password?",
                          style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width / 28,
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: InkWell(
              onTap: () {
                signin();
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => areyou()));
              },
              child: Container(
                width: 343,
                height: 67,
                decoration: BoxDecoration(
                    color: Color(0xffFFCD32),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "Continue",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                )),
              ),
            ),
          ),
          Column(
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text("Don't have an account?",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width / 28,
                    )),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () {},
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => signup()));
                    },
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xff383838),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        "SignUp",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 28,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
