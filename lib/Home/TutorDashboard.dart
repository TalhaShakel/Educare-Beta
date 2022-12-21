import 'package:educare/Categories/category.dart';
import 'package:educare/Home/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Your Students/yourstudents.dart';
import '../bottom/Notfications.dart';

class tutordashboard extends StatefulWidget {
  const tutordashboard({Key? key}) : super(key: key);

  @override
  State<tutordashboard> createState() => _tutordashboardState();
}

class _tutordashboardState extends State<tutordashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFFF5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.width / 5,
            right: MediaQuery.of(context).size.width / 1.6,
          ),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Image(
              image: AssetImage('assets/images/logo.png'),
              fit: BoxFit.contain,
            ),
            backgroundColor: Color(0xffFDFFF5),
            elevation: 0,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 100,
                ),
                Text("Hey,John",
                    style: GoogleFonts.poppins(
                      color: Color(0xff213E50),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    )),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Ready for Your\t",
                            style: GoogleFonts.poppins(
                                color: Color(0xff213E50),
                                fontWeight: FontWeight.w600,
                                fontSize: 17)),
                        Text("Next Lesson?",
                            style: GoogleFonts.poppins(
                                color: Color(0xffFFCD32),
                                fontWeight: FontWeight.bold,
                                fontSize: 17)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, right: 5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => notfication()));
                        },
                        child: Image.asset("assets/images/Notification.png",
                            width: 35, height: 35),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 20),
                  child: Image.asset(
                    "assets/images/anna.png",
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 60,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xffFFCD32),
                              ),
                              Text("5.0\t",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff213E50),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15)),
                              Text("(116 reviews)",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff455A64),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 11)),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 300,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.book,
                                color: Color(0xffFFCD32),
                              ),
                              Text("1282\t",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff213E50),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15)),
                              Text("(completed lessons)",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff455A64),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 11)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 40,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.9,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xffB3B4F7),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Set your Avalibility",
                              style: GoogleFonts.almarai(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width / 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //  ******************* New  Start of column for Body **************************************

                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Your Class",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff213E50),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15)),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => category()));
                            },
                            child: Text("See all",
                                style: GoogleFonts.poppins(
                                    color: Color(0xffFFCD32),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     children: [
                //       Container(
                //         width: 100,
                //         height: 105,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(10),
                //           color: Color(0xffFFCD32),
                //         ),
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             Container(
                //               height: 50,
                //               width: 50,
                //               decoration: BoxDecoration(
                //                 color: Colors.white,
                //                 borderRadius: BorderRadius.circular(50),
                //               ),
                //               child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 children: [
                //                   Image.asset("assets/images/img_6.png",width: 30,height: 30),
                //                 ],
                //               ),
                //             ),
                //             Text("Mathematics",style: GoogleFonts.poppins(
                //                 color: Colors.white
                //             ),)
                //           ],
                //         ),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.only(left: 10),
                //         child: Container(
                //           width: 100,
                //           height: 105,
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(10),
                //               border: Border.all(
                //                   color: Color(0xffFFCD32)
                //               )

                //           ),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Container(
                //                 height: 50,
                //                 width: 50,
                //                 decoration: BoxDecoration(
                //                   color: Colors.white,
                //                   borderRadius: BorderRadius.circular(50),

                //                 ),
                //                 child: Column(
                //                   mainAxisAlignment: MainAxisAlignment.center,
                //                   children: [
                //                     Image.asset("assets/images/img_7.png",width: 30,height: 30),
                //                   ],
                //                 ),
                //               ),
                //               Text("English",style: GoogleFonts.poppins(
                //                   color: Colors.black
                //               ),)
                //             ],
                //           ),
                //         ),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.only(left: 10),
                //         child: Container(
                //           width: 100,
                //           height: 105,
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(10),
                //               border: Border.all(
                //                   color: Color(0xffFFCD32)
                //               )

                //           ),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Container(
                //                 height: 50,
                //                 width: 50,
                //                 decoration: BoxDecoration(
                //                   color: Colors.white,
                //                   borderRadius: BorderRadius.circular(50),

                //                 ),
                //                 child: Column(
                //                   mainAxisAlignment: MainAxisAlignment.center,
                //                   children: [
                //                     Image.asset("assets/images/img_8.png",width: 30,height: 30),
                //                   ],
                //                 ),
                //               ),
                //               Text("Chemistry",style: GoogleFonts.poppins(
                //                   color: Colors.black
                //               ),)
                //             ],
                //           ),
                //         ),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.only(left: 10),
                //         child: Container(
                //           width: 100,
                //           height: 105,
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(10),
                //               border: Border.all(
                //                   color: Color(0xffFFCD32)
                //               )

                //           ),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Container(
                //                 height: 50,
                //                 width: 50,
                //                 decoration: BoxDecoration(
                //                   color: Colors.white,
                //                   borderRadius: BorderRadius.circular(50),

                //                 ),
                //                 child: Column(
                //                   mainAxisAlignment: MainAxisAlignment.center,
                //                   children: [
                //                     Image.asset("assets/images/img_9.png",width: 30,height: 30),
                //                   ],
                //                 ),
                //               ),
                //               Text("Biology",style: GoogleFonts.poppins(
                //                   color: Colors.black
                //               ),)
                //             ],
                //           ),
                //         ),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.only(left: 10),
                //         child: Container(
                //           width: 100,
                //           height: 105,
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(10),
                //               border: Border.all(
                //                   color: Color(0xffFFCD32)
                //               )

                //           ),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Container(
                //                 height: 50,
                //                 width: 50,
                //                 decoration: BoxDecoration(
                //                   color: Colors.white,
                //                   borderRadius: BorderRadius.circular(50),

                //                 ),
                //                 child: Column(
                //                   mainAxisAlignment: MainAxisAlignment.center,
                //                   children: [
                //                     Image.asset("assets/images/img_10.png",width: 30,height: 30),
                //                   ],
                //                 ),
                //               ),
                //               Text("History",style: GoogleFonts.poppins(
                //                   color: Colors.black
                //               ),)
                //             ],
                //           ),
                //         ),
                //       ),

                //     ],
                //   ),
                // ),

                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Your Student",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff213E50),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15)),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Yourstudents()));
                            },
                            child: Text("See all",
                                style: GoogleFonts.poppins(
                                    color: Color(0xffFFCD32),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 100,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffB3B4F7), width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 100,
                        ),
                        Image.asset("assets/images/img_20.png",
                            width: 60, height: 60),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Ellie B",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text("9 years old",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                )),
                            Text(
                                "2972 Westheimer Rd. Santa Ana, Illinois 85486 ",
                                style: GoogleFonts.poppins(
                                  fontSize: 8,
                                )),
                            Text("Parent: MR. Joe",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                )),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 80,
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
                                      child: Center(
                                          child: Text(
                                        "Biology",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white, fontSize: 12),
                                      )),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          80,
                                    ),
                                    Container(
                                      width: 80,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Color(0xffFFCD32),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "Mathmatics",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white, fontSize: 12),
                                      )),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 100,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffB3B4F7), width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 100,
                        ),
                        Image.asset("assets/images/img_20.png",
                            width: 60, height: 60),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Anna",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text("9 years old",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                )),
                            Text(
                                "2972 Westheimer Rd. Santa Ana, Illinois 85486 ",
                                style: GoogleFonts.poppins(
                                  fontSize: 8,
                                )),
                            Text("Parent: MR. Joe",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                )),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 80,
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
                                      child: Center(
                                          child: Text(
                                        "Biology",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white, fontSize: 12),
                                      )),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          80,
                                    ),
                                    Container(
                                      width: 80,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Color(0xffFFCD32),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "Mathmatics",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white, fontSize: 12),
                                      )),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //  ******************* New  Start of column for Body **************************************
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Popular Tutors",
                              style: GoogleFonts.poppins(
                                  color: Color(0xff213E50),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17)),
                          // Text("See all",style: GoogleFonts.poppins(
                          //     color: Color(0xffFFCD32),
                          //     fontWeight: FontWeight.bold,
                          //     fontSize: 15
                          //
                          // ))
                        ],
                      ),
                    ],
                  ),
                ),
                TutorTabs(),
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     children: [
                //       tutorTab(context),

                //       // SizedBox(
                //       //   width: MediaQuery.of(context).size.width / 30,
                //       // ),
                //       // Padding(
                //       //   padding: const EdgeInsets.only(
                //       //     bottom: 10,
                //       //   ),
                //       //   child: Container(
                //       //     height: 218,
                //       //     width: 218,
                //       //     decoration: BoxDecoration(
                //       //         color: Colors.white,
                //       //         borderRadius: BorderRadius.circular(10),
                //       //         boxShadow: [
                //       //           BoxShadow(
                //       //               color: Colors.grey.withOpacity(0.5),
                //       //               blurRadius: 7,
                //       //               spreadRadius: 1,
                //       //               offset: Offset(0, 1))
                //       //         ]),
                //       //     child: Column(
                //       //       crossAxisAlignment: CrossAxisAlignment.start,
                //       //       children: [
                //       //         Container(
                //       //           decoration: BoxDecoration(
                //       //               color: Color(0xffB3B4F7),
                //       //               borderRadius: BorderRadius.only(
                //       //                   topLeft: Radius.circular(10),
                //       //                   topRight: Radius.circular(10))),
                //       //           child: Padding(
                //       //             padding: const EdgeInsets.only(
                //       //               top: 10,
                //       //             ),
                //       //             child: Column(
                //       //               crossAxisAlignment:
                //       //                   CrossAxisAlignment.start,
                //       //               children: [
                //       //                 Row(
                //       //                   mainAxisAlignment:
                //       //                       MainAxisAlignment.start,
                //       //                   crossAxisAlignment:
                //       //                       CrossAxisAlignment.start,
                //       //                   children: [
                //       //                     Column(
                //       //                       mainAxisAlignment:
                //       //                           MainAxisAlignment.center,
                //       //                       children: [
                //       //                         Image.asset(
                //       //                           "assets/images/img_11.png",
                //       //                           width: MediaQuery.of(context)
                //       //                                   .size
                //       //                                   .width /
                //       //                               5,
                //       //                           height: MediaQuery.of(context)
                //       //                                   .size
                //       //                                   .height /
                //       //                               13,
                //       //                         ),
                //       //                       ],
                //       //                     ),
                //       //                     Column(
                //       //                       crossAxisAlignment:
                //       //                           CrossAxisAlignment.start,
                //       //                       children: [
                //       //                         Row(
                //       //                           children: [
                //       //                             Text(
                //       //                               "Anna",
                //       //                               style: GoogleFonts.poppins(
                //       //                                 color: Colors.white,
                //       //                                 fontSize: 17,
                //       //                                 fontWeight:
                //       //                                     FontWeight.bold,
                //       //                               ),
                //       //                             ),
                //       //                             SizedBox(
                //       //                               width:
                //       //                                   MediaQuery.of(context)
                //       //                                           .size
                //       //                                           .width /
                //       //                                       100,
                //       //                             ),
                //       //                             Image.asset(
                //       //                               "assets/images/img_12.png",
                //       //                               width:
                //       //                                   MediaQuery.of(context)
                //       //                                           .size
                //       //                                           .width /
                //       //                                       20,
                //       //                             ),
                //       //                           ],
                //       //                         ),
                //       //                         Text(
                //       //                           "Birmingham University",
                //       //                           style: GoogleFonts.poppins(
                //       //                             color: Colors.white,
                //       //                             fontSize: 10,
                //       //                             fontWeight: FontWeight.bold,
                //       //                           ),
                //       //                         ),
                //       //                         Text(
                //       //                           "Phychology(Bachelors)",
                //       //                           style: GoogleFonts.poppins(
                //       //                             color: Colors.white,
                //       //                             fontSize: 10,
                //       //                             fontWeight: FontWeight.bold,
                //       //                           ),
                //       //                         ),
                //       //                       ],
                //       //                     ),
                //       //                   ],
                //       //                 )
                //       //               ],
                //       //             ),
                //       //           ),
                //       //         ),
                //       //         Padding(
                //       //           padding:
                //       //               const EdgeInsets.only(right: 10, left: 10),
                //       //           child: Column(
                //       //             crossAxisAlignment: CrossAxisAlignment.start,
                //       //             children: [
                //       //               SingleChildScrollView(
                //       //                 scrollDirection: Axis.horizontal,
                //       //                 child: Row(
                //       //                   children: [
                //       //                     Text(
                //       //                       "Offers:",
                //       //                       style: GoogleFonts.poppins(
                //       //                         fontSize: 8,
                //       //                         fontWeight: FontWeight.normal,
                //       //                       ),
                //       //                     ),
                //       //                     SizedBox(
                //       //                       width: MediaQuery.of(context)
                //       //                               .size
                //       //                               .width /
                //       //                           70,
                //       //                     ),
                //       //                     Padding(
                //       //                       padding: const EdgeInsets.only(
                //       //                         top: 05,
                //       //                       ),
                //       //                       child: Container(
                //       //                         decoration: BoxDecoration(
                //       //                           color: Color(0xffB3B4F7),
                //       //                           borderRadius:
                //       //                               BorderRadius.circular(3),
                //       //                         ),
                //       //                         child: Padding(
                //       //                           padding:
                //       //                               const EdgeInsets.all(7.0),
                //       //                           child: Center(
                //       //                               child: Text(
                //       //                             "Biology",
                //       //                             style: GoogleFonts.poppins(
                //       //                                 color: Colors.white,
                //       //                                 fontSize: 8,
                //       //                                 fontWeight:
                //       //                                     FontWeight.bold),
                //       //                           )),
                //       //                         ),
                //       //                       ),
                //       //                     ),
                //       //                     SizedBox(
                //       //                       width: MediaQuery.of(context)
                //       //                               .size
                //       //                               .width /
                //       //                           70,
                //       //                     ),
                //       //                     Padding(
                //       //                       padding: const EdgeInsets.only(
                //       //                         top: 05,
                //       //                       ),
                //       //                       child: Container(
                //       //                         decoration: BoxDecoration(
                //       //                           color: Color(0xffB3B4F7),
                //       //                           borderRadius:
                //       //                               BorderRadius.circular(5),
                //       //                         ),
                //       //                         child: Padding(
                //       //                           padding:
                //       //                               const EdgeInsets.all(7.0),
                //       //                           child: Center(
                //       //                               child: Text(
                //       //                             "Mathmatics",
                //       //                             style: GoogleFonts.poppins(
                //       //                                 color: Colors.white,
                //       //                                 fontSize: 8,
                //       //                                 fontWeight:
                //       //                                     FontWeight.bold),
                //       //                           )),
                //       //                         ),
                //       //                       ),
                //       //                     ),
                //       //                     SizedBox(
                //       //                       width: MediaQuery.of(context)
                //       //                               .size
                //       //                               .width /
                //       //                           70,
                //       //                     ),
                //       //                     Text(
                //       //                       "+5 more",
                //       //                       style: GoogleFonts.poppins(
                //       //                           fontSize: 8),
                //       //                     )
                //       //                   ],
                //       //                 ),
                //       //               ),
                //       //               Padding(
                //       //                 padding: const EdgeInsets.only(
                //       //                     top: 10, bottom: 10),
                //       //                 child: Text(
                //       //                   "Experienced online tutor in Psychology,Mathematics,Music Theory, and Biology for students looking...",
                //       //                   style: GoogleFonts.poppins(
                //       //                       fontWeight: FontWeight.normal,
                //       //                       fontSize: 10,
                //       //                       color: Color(0xff455A64)),
                //       //                 ),
                //       //               ),
                //       //               Row(
                //       //                 children: [
                //       //                   Icon(
                //       //                     Icons.star,
                //       //                     color: Color(0xffFFCD32),
                //       //                     size: 15,
                //       //                   ),
                //       //                   Text(
                //       //                     "5.0\t",
                //       //                     style: TextStyle(
                //       //                         color: Color(0xff455A64),
                //       //                         fontWeight: FontWeight.bold,
                //       //                         fontSize: 10),
                //       //                   ),
                //       //                   Text(
                //       //                     "(116 reviews)",
                //       //                     style: GoogleFonts.poppins(
                //       //                         fontSize: 10,
                //       //                         color: Color(0xff455A64)),
                //       //                   )
                //       //                 ],
                //       //               ),
                //       //               Row(
                //       //                 mainAxisAlignment:
                //       //                     MainAxisAlignment.spaceBetween,
                //       //                 children: [
                //       //                   Row(
                //       //                     children: [
                //       //                       Icon(
                //       //                         Icons.book,
                //       //                         color: Color(0xffFFCD32),
                //       //                         size: 15,
                //       //                       ),
                //       //                       Text(
                //       //                         "1282\t",
                //       //                         style: TextStyle(
                //       //                           color: Color(0xff455A64),
                //       //                           fontWeight: FontWeight.bold,
                //       //                           fontSize: 10,
                //       //                         ),
                //       //                       ),
                //       //                       Text(
                //       //                         "Completed lessons",
                //       //                         style: GoogleFonts.poppins(
                //       //                             fontSize: 10,
                //       //                             color: Color(0xff455A64)),
                //       //                       )
                //       //                     ],
                //       //                   ),
                //       //                   Row(
                //       //                     children: [
                //       //                       Text(
                //       //                         "£50",
                //       //                         style: GoogleFonts.poppins(
                //       //                             color: Color(0xffFFCD32),
                //       //                             fontSize: 17,
                //       //                             fontWeight: FontWeight.bold),
                //       //                       ),
                //       //                       Text(
                //       //                         "/hrs",
                //       //                         style: GoogleFonts.poppins(
                //       //                             color: Color(0xffFFCD32),
                //       //                             fontSize: 8,
                //       //                             fontWeight: FontWeight.bold),
                //       //                       )
                //       //                     ],
                //       //                   ),
                //       //                 ],
                //       //               ),
                //       //             ],
                //       //           ),
                //       //         ),
                //       //       ],
                //       //     ),
                //       //   ),
                //       // ),
                //       // SizedBox(
                //       //   width: MediaQuery.of(context).size.width / 30,
                //       // ),
                //       // Padding(
                //       //   padding: const EdgeInsets.only(
                //       //     bottom: 10,
                //       //   ),
                //       //   child: Container(
                //       //     height: 218,
                //       //     width: 218,
                //       //     decoration: BoxDecoration(
                //       //         color: Colors.white,
                //       //         borderRadius: BorderRadius.circular(10),
                //       //         boxShadow: [
                //       //           BoxShadow(
                //       //               color: Colors.grey.withOpacity(0.5),
                //       //               blurRadius: 7,
                //       //               spreadRadius: 1,
                //       //               offset: Offset(0, 1))
                //       //         ]),
                //       //     child: Column(
                //       //       crossAxisAlignment: CrossAxisAlignment.start,
                //       //       children: [
                //       //         Container(
                //       //           decoration: BoxDecoration(
                //       //               color: Color(0xffB3B4F7),
                //       //               borderRadius: BorderRadius.only(
                //       //                   topLeft: Radius.circular(10),
                //       //                   topRight: Radius.circular(10))),
                //       //           child: Padding(
                //       //             padding: const EdgeInsets.only(
                //       //               top: 10,
                //       //             ),
                //       //             child: Column(
                //       //               crossAxisAlignment:
                //       //                   CrossAxisAlignment.start,
                //       //               children: [
                //       //                 Row(
                //       //                   mainAxisAlignment:
                //       //                       MainAxisAlignment.start,
                //       //                   crossAxisAlignment:
                //       //                       CrossAxisAlignment.start,
                //       //                   children: [
                //       //                     Column(
                //       //                       mainAxisAlignment:
                //       //                           MainAxisAlignment.center,
                //       //                       children: [
                //       //                         Image.asset(
                //       //                           "assets/images/img_11.png",
                //       //                           width: MediaQuery.of(context)
                //       //                                   .size
                //       //                                   .width /
                //       //                               5,
                //       //                           height: MediaQuery.of(context)
                //       //                                   .size
                //       //                                   .height /
                //       //                               13,
                //       //                         ),
                //       //                       ],
                //       //                     ),
                //       //                     Column(
                //       //                       crossAxisAlignment:
                //       //                           CrossAxisAlignment.start,
                //       //                       children: [
                //       //                         Row(
                //       //                           children: [
                //       //                             Text(
                //       //                               "Anna",
                //       //                               style: GoogleFonts.poppins(
                //       //                                 color: Colors.white,
                //       //                                 fontSize: 17,
                //       //                                 fontWeight:
                //       //                                     FontWeight.bold,
                //       //                               ),
                //       //                             ),
                //       //                             SizedBox(
                //       //                               width:
                //       //                                   MediaQuery.of(context)
                //       //                                           .size
                //       //                                           .width /
                //       //                                       100,
                //       //                             ),
                //       //                             Image.asset(
                //       //                               "assets/images/img_12.png",
                //       //                               width:
                //       //                                   MediaQuery.of(context)
                //       //                                           .size
                //       //                                           .width /
                //       //                                       20,
                //       //                             ),
                //       //                           ],
                //       //                         ),
                //       //                         Text(
                //       //                           "Birmingham University",
                //       //                           style: GoogleFonts.poppins(
                //       //                             color: Colors.white,
                //       //                             fontSize: 10,
                //       //                             fontWeight: FontWeight.bold,
                //       //                           ),
                //       //                         ),
                //       //                         Text(
                //       //                           "Phychology(Bachelors)",
                //       //                           style: GoogleFonts.poppins(
                //       //                             color: Colors.white,
                //       //                             fontSize: 10,
                //       //                             fontWeight: FontWeight.bold,
                //       //                           ),
                //       //                         ),
                //       //                       ],
                //       //                     ),
                //       //                   ],
                //       //                 )
                //       //               ],
                //       //             ),
                //       //           ),
                //       //         ),
                //       //         Padding(
                //       //           padding:
                //       //               const EdgeInsets.only(right: 10, left: 10),
                //       //           child: Column(
                //       //             crossAxisAlignment: CrossAxisAlignment.start,
                //       //             children: [
                //       //               SingleChildScrollView(
                //       //                 scrollDirection: Axis.horizontal,
                //       //                 child: Row(
                //       //                   children: [
                //       //                     Text(
                //       //                       "Offers:",
                //       //                       style: GoogleFonts.poppins(
                //       //                         fontSize: 8,
                //       //                         fontWeight: FontWeight.normal,
                //       //                       ),
                //       //                     ),
                //       //                     SizedBox(
                //       //                       width: MediaQuery.of(context)
                //       //                               .size
                //       //                               .width /
                //       //                           70,
                //       //                     ),
                //       //                     Padding(
                //       //                       padding: const EdgeInsets.only(
                //       //                         top: 05,
                //       //                       ),
                //       //                       child: Container(
                //       //                         decoration: BoxDecoration(
                //       //                           color: Color(0xffB3B4F7),
                //       //                           borderRadius:
                //       //                               BorderRadius.circular(3),
                //       //                         ),
                //       //                         child: Padding(
                //       //                           padding:
                //       //                               const EdgeInsets.all(7.0),
                //       //                           child: Center(
                //       //                               child: Text(
                //       //                             "Biology",
                //       //                             style: GoogleFonts.poppins(
                //       //                                 color: Colors.white,
                //       //                                 fontSize: 8,
                //       //                                 fontWeight:
                //       //                                     FontWeight.bold),
                //       //                           )),
                //       //                         ),
                //       //                       ),
                //       //                     ),
                //       //                     SizedBox(
                //       //                       width: MediaQuery.of(context)
                //       //                               .size
                //       //                               .width /
                //       //                           70,
                //       //                     ),
                //       //                     Padding(
                //       //                       padding: const EdgeInsets.only(
                //       //                         top: 05,
                //       //                       ),
                //       //                       child: Container(
                //       //                         decoration: BoxDecoration(
                //       //                           color: Color(0xffB3B4F7),
                //       //                           borderRadius:
                //       //                               BorderRadius.circular(5),
                //       //                         ),
                //       //                         child: Padding(
                //       //                           padding:
                //       //                               const EdgeInsets.all(7.0),
                //       //                           child: Center(
                //       //                               child: Text(
                //       //                             "Mathmatics",
                //       //                             style: GoogleFonts.poppins(
                //       //                                 color: Colors.white,
                //       //                                 fontSize: 8,
                //       //                                 fontWeight:
                //       //                                     FontWeight.bold),
                //       //                           )),
                //       //                         ),
                //       //                       ),
                //       //                     ),
                //       //                     SizedBox(
                //       //                       width: MediaQuery.of(context)
                //       //                               .size
                //       //                               .width /
                //       //                           70,
                //       //                     ),
                //       //                     Text(
                //       //                       "+5 more",
                //       //                       style: GoogleFonts.poppins(
                //       //                           fontSize: 8),
                //       //                     )
                //       //                   ],
                //       //                 ),
                //       //               ),
                //       //               Padding(
                //       //                 padding: const EdgeInsets.only(
                //       //                     top: 10, bottom: 10),
                //       //                 child: Text(
                //       //                   "Experienced online tutor in Psychology,Mathematics,Music Theory, and Biology for students looking...",
                //       //                   style: GoogleFonts.poppins(
                //       //                       fontWeight: FontWeight.normal,
                //       //                       fontSize: 10,
                //       //                       color: Color(0xff455A64)),
                //       //                 ),
                //       //               ),
                //       //               Row(
                //       //                 children: [
                //       //                   Icon(
                //       //                     Icons.star,
                //       //                     color: Color(0xffFFCD32),
                //       //                     size: 15,
                //       //                   ),
                //       //                   Text(
                //       //                     "5.0\t",
                //       //                     style: TextStyle(
                //       //                         color: Color(0xff455A64),
                //       //                         fontWeight: FontWeight.bold,
                //       //                         fontSize: 10),
                //       //                   ),
                //       //                   Text(
                //       //                     "(116 reviews)",
                //       //                     style: GoogleFonts.poppins(
                //       //                         fontSize: 10,
                //       //                         color: Color(0xff455A64)),
                //       //                   )
                //       //                 ],
                //       //               ),
                //       //               Row(
                //       //                 mainAxisAlignment:
                //       //                     MainAxisAlignment.spaceBetween,
                //       //                 children: [
                //       //                   Row(
                //       //                     children: [
                //       //                       Icon(
                //       //                         Icons.book,
                //       //                         color: Color(0xffFFCD32),
                //       //                         size: 15,
                //       //                       ),
                //       //                       Text(
                //       //                         "1282\t",
                //       //                         style: TextStyle(
                //       //                           color: Color(0xff455A64),
                //       //                           fontWeight: FontWeight.bold,
                //       //                           fontSize: 10,
                //       //                         ),
                //       //                       ),
                //       //                       Text(
                //       //                         "Completed lessons",
                //       //                         style: GoogleFonts.poppins(
                //       //                             fontSize: 10,
                //       //                             color: Color(0xff455A64)),
                //       //                       )
                //       //                     ],
                //       //                   ),
                //       //                   Row(
                //       //                     children: [
                //       //                       Text(
                //       //                         "£50",
                //       //                         style: GoogleFonts.poppins(
                //       //                             color: Color(0xffFFCD32),
                //       //                             fontSize: 17,
                //       //                             fontWeight: FontWeight.bold),
                //       //                       ),
                //       //                       Text(
                //       //                         "/hrs",
                //       //                         style: GoogleFonts.poppins(
                //       //                             color: Color(0xffFFCD32),
                //       //                             fontSize: 8,
                //       //                             fontWeight: FontWeight.bold),
                //       //                       )
                //       //                     ],
                //       //                   ),
                //       //                 ],
                //       //               ),
                //       //             ],
                //       //           ),
                //       //         ),
                //       //       ],
                //       //     ),
                //       //   ),
                //       // ),
                //       // SizedBox(
                //       //   width: MediaQuery.of(context).size.width / 30,
                //       // ),
                //     ],
                //   ),
                // ),

                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 60,
                    bottom: MediaQuery.of(context).size.height / 60,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("On Going",
                              style: GoogleFonts.poppins(
                                color: Color(0xff213E50),
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width / 20,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 100,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context).size.height /
                                        50),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "9Am",
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                25,
                                      ),
                                    ),
                                    Text("-------------------",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              25,
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                30,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "10Am",
                                            style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  25,
                                            ),
                                          ),
                                          Text("-------------------",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    25,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.6,
                                height: MediaQuery.of(context).size.height / 6,
                                decoration: BoxDecoration(
                                    color: Color(0xffFFCD32),
                                    borderRadius: BorderRadius.circular(15)),
                                //error
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right:
                                        MediaQuery.of(context).size.width / 10,
                                    left:
                                        MediaQuery.of(context).size.width / 35,
                                    top:
                                        MediaQuery.of(context).size.height / 70,
                                    bottom:
                                        MediaQuery.of(context).size.height / 50,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Math",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  20,
                                            ),
                                          ),
                                          Text(
                                            "Saber & Oro",
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                100,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                              "assets/images/img_14.png",
                                              width: 24,
                                              height: 24),
                                          Text(
                                            "1:00AM-2.00AM",
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  25,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 80,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "11AM",
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 25,
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.33,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 100,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context).size.height /
                                        50),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "12pm",
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                25,
                                      ),
                                    ),
                                    Text("-------------------",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              25,
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height /
                                                30,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "1pm",
                                            style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  25,
                                            ),
                                          ),
                                          Text("-------------------",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    25,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.6,
                                height: MediaQuery.of(context).size.height / 6,
                                decoration: BoxDecoration(
                                    color: Color(0xff42CF96),
                                    borderRadius: BorderRadius.circular(15)),
                                //error
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right:
                                        MediaQuery.of(context).size.width / 10,
                                    left:
                                        MediaQuery.of(context).size.width / 35,
                                    top:
                                        MediaQuery.of(context).size.height / 70,
                                    bottom:
                                        MediaQuery.of(context).size.height / 50,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Math",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  20,
                                            ),
                                          ),
                                          Text(
                                            "Saber & Oro",
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                100,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                              "assets/images/img_14.png",
                                              width: 24,
                                              height: 24),
                                          Text(
                                            "1:00AM-2.00AM",
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  25,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 100,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context).size.height /
                                        50),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "2pm",
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                25,
                                      ),
                                    ),
                                    Text("-------------------",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              25,
                                        )),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.6,
                                height: MediaQuery.of(context).size.height / 6,
                                decoration: BoxDecoration(
                                    color: Color(0xffE48FFF),
                                    borderRadius: BorderRadius.circular(15)),
                                //error
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right:
                                        MediaQuery.of(context).size.width / 10,
                                    left:
                                        MediaQuery.of(context).size.width / 35,
                                    top:
                                        MediaQuery.of(context).size.height / 70,
                                    bottom:
                                        MediaQuery.of(context).size.height / 50,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Math",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  20,
                                            ),
                                          ),
                                          Text(
                                            "Saber & Oro",
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                100,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                              "assets/images/img_14.png",
                                              width: 24,
                                              height: 24),
                                          Text(
                                            "1:00AM-2.00AM",
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  25,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding tutorTab(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Container(
        height: 218.h,
        width: 218.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 7,
                  spreadRadius: 1,
                  offset: Offset(0, 1))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffB3B4F7),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/img_11.png",
                              width: MediaQuery.of(context).size.width / 5,
                              height: MediaQuery.of(context).size.height / 13,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Anna",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 100,
                                ),
                                Image.asset(
                                  "assets/images/img_12.png",
                                  width: MediaQuery.of(context).size.width / 20,
                                ),
                              ],
                            ),
                            Text(
                              "Birmingham University",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Phychology(Bachelors)",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                          "Offers:",
                          style: GoogleFonts.poppins(
                            fontSize: 8,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 05,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffB3B4F7),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Center(
                                  child: Text(
                                "Biology",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 05,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffB3B4F7),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Center(
                                  child: Text(
                                "Mathmatics",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 70,
                        ),
                        Text(
                          "+5 more",
                          style: GoogleFonts.poppins(fontSize: 8),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "Experienced online tutor in Psychology,Mathematics,Music Theory, and Biology for students looking...",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                          color: Color(0xff455A64)),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xffFFCD32),
                        size: 15,
                      ),
                      Text(
                        "5.0\t",
                        style: TextStyle(
                            color: Color(0xff455A64),
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                      Text(
                        "(116 reviews)",
                        style: GoogleFonts.poppins(
                            fontSize: 10, color: Color(0xff455A64)),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.book,
                            color: Color(0xffFFCD32),
                            size: 15,
                          ),
                          Text(
                            "1282\t",
                            style: TextStyle(
                              color: Color(0xff455A64),
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "Completed lessons",
                            style: GoogleFonts.poppins(
                                fontSize: 10, color: Color(0xff455A64)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "£50",
                            style: GoogleFonts.poppins(
                                color: Color(0xffFFCD32),
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "/hrs",
                            style: GoogleFonts.poppins(
                                color: Color(0xffFFCD32),
                                fontSize: 8,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
