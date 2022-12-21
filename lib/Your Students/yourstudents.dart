import 'package:educare/bottom/tutorbottom.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bottom/bottom.dart';
class Yourstudents extends StatefulWidget {
  const Yourstudents({Key? key}) : super(key: key);

  @override
  State<Yourstudents> createState() => _YourstudentsState();
}

class _YourstudentsState extends State<Yourstudents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Yourstudents",style: GoogleFonts.poppins(
            color: Color(0xff213E50),
            fontWeight: FontWeight.bold,
            fontSize: 17
        )),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ttbottom()));
        }, icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black),),

      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/100,
          ),
          Container(
            width:MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Color(0xffB3B4F7),
                  width: 1
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/100,
                  ),
                  Image.asset("assets/images/img_20.png",width: 60,height: 60),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Ellie B",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                      Text("9 years old",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      Text("2972 Westheimer Rd. Santa Ana, Illinois 85486 ",style: GoogleFonts.poppins(
                        fontSize: 8,
                      )),
                      Text("Parent: MR. Joe",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/80,
                      ),
                      Row(

                        children: [
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                    color: Colors.white,

                                    fontSize: 12
                                ),)),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12
                                ),)),
                              ),

                            ],
                          ),

                          Row(children: [

                          ],),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/100,
          ),
          Container(
            width:MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Color(0xffB3B4F7),
                  width: 1
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/100,
                  ),
                  Image.asset("assets/images/img_20.png",width: 60,height: 60),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Ellie B",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                      Text("9 years old",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      Text("2972 Westheimer Rd. Santa Ana, Illinois 85486 ",style: GoogleFonts.poppins(
                        fontSize: 8,
                      )),
                      Text("Parent: MR. Joe",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/80,
                      ),
                      Row(

                        children: [
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                    color: Colors.white,

                                    fontSize: 12
                                ),)),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12
                                ),)),
                              ),

                            ],
                          ),

                          Row(children: [

                          ],),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/100,
          ),
          Container(
            width:MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Color(0xffB3B4F7),
                  width: 1
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/100,
                  ),
                  Image.asset("assets/images/img_20.png",width: 60,height: 60),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Ellie B",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                      Text("9 years old",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      Text("2972 Westheimer Rd. Santa Ana, Illinois 85486 ",style: GoogleFonts.poppins(
                        fontSize: 8,
                      )),
                      Text("Parent: MR. Joe",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/80,
                      ),
                      Row(

                        children: [
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                    color: Colors.white,

                                    fontSize: 12
                                ),)),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12
                                ),)),
                              ),

                            ],
                          ),

                          Row(children: [

                          ],),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/100,
          ),
          Container(
            width:MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Color(0xffB3B4F7),
                  width: 1
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/100,
                  ),
                  Image.asset("assets/images/img_20.png",width: 60,height: 60),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Ellie B",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                      Text("9 years old",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      Text("2972 Westheimer Rd. Santa Ana, Illinois 85486 ",style: GoogleFonts.poppins(
                        fontSize: 8,
                      )),
                      Text("Parent: MR. Joe",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/80,
                      ),
                      Row(

                        children: [
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                    color: Colors.white,

                                    fontSize: 12
                                ),)),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12
                                ),)),
                              ),

                            ],
                          ),

                          Row(children: [

                          ],),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/100,
          ),
          Container(
            width:MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Color(0xffB3B4F7),
                  width: 1
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/100,
                  ),
                  Image.asset("assets/images/img_20.png",width: 60,height: 60),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Ellie B",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                      Text("9 years old",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      Text("2972 Westheimer Rd. Santa Ana, Illinois 85486 ",style: GoogleFonts.poppins(
                        fontSize: 8,
                      )),
                      Text("Parent: MR. Joe",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/80,
                      ),
                      Row(

                        children: [
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                    color: Colors.white,

                                    fontSize: 12
                                ),)),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12
                                ),)),
                              ),

                            ],
                          ),

                          Row(children: [

                          ],),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/100,
          ),
          Container(
            width:MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Color(0xffB3B4F7),
                  width: 1
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/100,
                  ),
                  Image.asset("assets/images/img_20.png",width: 60,height: 60),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Ellie B",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                      Text("9 years old",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      Text("2972 Westheimer Rd. Santa Ana, Illinois 85486 ",style: GoogleFonts.poppins(
                        fontSize: 8,
                      )),
                      Text("Parent: MR. Joe",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/80,
                      ),
                      Row(

                        children: [
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                    color: Colors.white,

                                    fontSize: 12
                                ),)),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12
                                ),)),
                              ),

                            ],
                          ),

                          Row(children: [

                          ],),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/100,
          ),
          Container(
            width:MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Color(0xffB3B4F7),
                  width: 1
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/100,
                  ),
                  Image.asset("assets/images/img_20.png",width: 60,height: 60),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Ellie B",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                      Text("9 years old",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      Text("2972 Westheimer Rd. Santa Ana, Illinois 85486 ",style: GoogleFonts.poppins(
                        fontSize: 8,
                      )),
                      Text("Parent: MR. Joe",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/80,
                      ),
                      Row(

                        children: [
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                    color: Colors.white,

                                    fontSize: 12
                                ),)),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12
                                ),)),
                              ),

                            ],
                          ),

                          Row(children: [

                          ],),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/100,
          ),
          Container(
            width:MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Color(0xffB3B4F7),
                  width: 1
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/100,
                  ),
                  Image.asset("assets/images/img_20.png",width: 60,height: 60),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Ellie B",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                      Text("9 years old",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      Text("2972 Westheimer Rd. Santa Ana, Illinois 85486 ",style: GoogleFonts.poppins(
                        fontSize: 8,
                      )),
                      Text("Parent: MR. Joe",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/80,
                      ),
                      Row(

                        children: [
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                    color: Colors.white,

                                    fontSize: 12
                                ),)),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12
                                ),)),
                              ),

                            ],
                          ),

                          Row(children: [

                          ],),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/100,
          ),
          Container(
            width:MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Color(0xffB3B4F7),
                  width: 1
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/100,
                  ),
                  Image.asset("assets/images/img_20.png",width: 60,height: 60),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Ellie B",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                      Text("9 years old",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      Text("2972 Westheimer Rd. Santa Ana, Illinois 85486 ",style: GoogleFonts.poppins(
                        fontSize: 8,
                      )),
                      Text("Parent: MR. Joe",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/80,
                      ),
                      Row(

                        children: [
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                    color: Colors.white,

                                    fontSize: 12
                                ),)),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12
                                ),)),
                              ),

                            ],
                          ),

                          Row(children: [

                          ],),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/100,
          ),
          Container(
            width:MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Color(0xffB3B4F7),
                  width: 1
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/100,
                  ),
                  Image.asset("assets/images/img_20.png",width: 60,height: 60),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Ellie B",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                      Text("9 years old",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      Text("2972 Westheimer Rd. Santa Ana, Illinois 85486 ",style: GoogleFonts.poppins(
                        fontSize: 8,
                      )),
                      Text("Parent: MR. Joe",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/80,
                      ),
                      Row(

                        children: [
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                    color: Colors.white,

                                    fontSize: 12
                                ),)),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12
                                ),)),
                              ),

                            ],
                          ),

                          Row(children: [

                          ],),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/100,
          ),
          Container(
            width:MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Color(0xffB3B4F7),
                  width: 1
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/100,
                  ),
                  Image.asset("assets/images/img_20.png",width: 60,height: 60),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Ellie B",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                      Text("9 years old",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      Text("2972 Westheimer Rd. Santa Ana, Illinois 85486 ",style: GoogleFonts.poppins(
                        fontSize: 8,
                      )),
                      Text("Parent: MR. Joe",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/80,
                      ),
                      Row(

                        children: [
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                    color: Colors.white,

                                    fontSize: 12
                                ),)),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12
                                ),)),
                              ),

                            ],
                          ),

                          Row(children: [

                          ],),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/100,
          ),




        ],
      ),
    );
  }
}
