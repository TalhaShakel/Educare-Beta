import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Login/Login.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 300), () {
      // Navigator.push(context, MaterialPageRoute(builder: (context)=> login()));
    });
    return Scaffold(
      backgroundColor: Color(0xffFDFFF5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/st.png",
            height: MediaQuery.of(context).size.height / 1.6,
            width: Get.width,
            fit: BoxFit.fitWidth,
          ),
          Text("GROW TOGETHER\nTO BE BETTER",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.width / 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
              child: Container(
                width: 250,
                height: 64,
                decoration: BoxDecoration(
                    color: Color(0xffFFCD32),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 20,
                    color: Colors.white,
                  ),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
