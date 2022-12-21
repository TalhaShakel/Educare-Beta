import 'package:educare/Home/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../bottom/bottom.dart';

class category extends StatefulWidget {
  const category({Key? key}) : super(key: key);

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Categories",
            style: GoogleFonts.poppins(
                color: Color(0xff213E50),
                fontWeight: FontWeight.bold,
                fontSize: 17)),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => pmbottom()));
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.heightBox,
              Text(
                "Popular",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                    color: Colors.black),
              ),
              10.heightBox,
              popularSubjectTabs(),
              20.heightBox,
              Text(
                "All Subjects",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                    color: Colors.black),
              ),
              20.heightBox,
              SubjectTabs(),
              15.heightBox,
              SubjectTabs(),
              15.heightBox,

              SubjectTabs(),

              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 20),
              //     child: Padding(
              //       padding: const EdgeInsets.only(top: 10),
              //       child: Row(
              //         children: [
              //           Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(10),
              //               color: Color(0xffFFCD32),
              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),
              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_6.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("Mathematics",style: GoogleFonts.poppins(
              //                     color: Colors.white
              //                 ),)
              //               ],
              //             ),
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.only(left: 10),
              //             child: Container(
              //               width: 100,
              //               height: 105,
              //               decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(10),
              //                   border: Border.all(
              //                       color: Color(0xffFFCD32)
              //                   )

              //               ),
              //               child: Column(
              //                 mainAxisAlignment: MainAxisAlignment.center,
              //                 children: [
              //                   Container(
              //                     height: 50,
              //                     width: 50,
              //                     decoration: BoxDecoration(
              //                       color: Colors.white,
              //                       borderRadius: BorderRadius.circular(50),

              //                     ),
              //                     child: Column(
              //                       mainAxisAlignment: MainAxisAlignment.center,
              //                       children: [
              //                         Image.asset("assets/images/img_7.png",width: 30,height: 30),
              //                       ],
              //                     ),
              //                   ),
              //                   Text("English",style: GoogleFonts.poppins(
              //                       color: Colors.black
              //                   ),)
              //                 ],
              //               ),
              //             ),
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.only(left: 10),
              //             child: Container(
              //               width: 100,
              //               height: 105,
              //               decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(10),
              //                   border: Border.all(
              //                       color: Color(0xffFFCD32)
              //                   )

              //               ),
              //               child: Column(
              //                 mainAxisAlignment: MainAxisAlignment.center,
              //                 children: [
              //                   Container(
              //                     height: 50,
              //                     width: 50,
              //                     decoration: BoxDecoration(
              //                       color: Colors.white,
              //                       borderRadius: BorderRadius.circular(50),

              //                     ),
              //                     child: Column(
              //                       mainAxisAlignment: MainAxisAlignment.center,
              //                       children: [
              //                         Image.asset("assets/images/img_8.png",width: 30,height: 30),
              //                       ],
              //                     ),
              //                   ),
              //                   Text("Chemistry",style: GoogleFonts.poppins(
              //                       color: Colors.black
              //                   ),)
              //                 ],
              //               ),
              //             ),
              //           ),

              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 20,bottom: 10,left: 20),
              //   child: Column(
              //     children: [
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Text("All Subjects",style: GoogleFonts.poppins(
              //               color: Color(0xff213E50),
              //               fontWeight: FontWeight.bold,
              //               fontSize: 17
              //           )),
              //         ],
              //       ),

              //     ],
              //   ),
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 20,top: 10),
              //     child: Row(
              //       children: [
              //         Container(
              //           width: 100,
              //           height: 105,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             color: Color(0xffFFCD32),
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
              //                     Image.asset("assets/images/img_6.png",width: 30,height: 30),
              //                   ],
              //                 ),
              //               ),
              //               Text("Mathematics",style: GoogleFonts.poppins(
              //                   color: Colors.white
              //               ),)
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_7.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("English",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_8.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("Chemistry",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),

              //       ],
              //     ),
              //   ),
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 20,top: 10),
              //     child: Row(
              //       children: [
              //         Container(
              //           width: 100,
              //           height: 105,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             border: Border.all(color: Color(0xffFFCD32)),
              //             color: Colors.white,
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
              //                     Image.asset("assets/images/img_6.png",width: 30,height: 30),
              //                   ],
              //                 ),
              //               ),
              //               Text("Mathematics",style: GoogleFonts.poppins(
              //                   color: Colors.black,
              //               ),)
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_7.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("English",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_8.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("Chemistry",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),

              //       ],
              //     ),
              //   ),
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 20,top: 10),
              //     child: Row(
              //       children: [
              //         Container(
              //           width: 100,
              //           height: 105,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             border: Border.all(color: Color(0xffFFCD32)),
              //             color: Colors.white,
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
              //                     Image.asset("assets/images/img_6.png",width: 30,height: 30),
              //                   ],
              //                 ),
              //               ),
              //               Text("Mathematics",style: GoogleFonts.poppins(
              //                 color: Colors.black,
              //               ),)
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_7.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("English",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_8.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("Chemistry",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),

              //       ],
              //     ),
              //   ),
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 20,top: 10),
              //     child: Row(
              //       children: [
              //         Container(
              //           width: 100,
              //           height: 105,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             border: Border.all(color: Color(0xffFFCD32)),
              //             color: Colors.white,
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
              //                     Image.asset("assets/images/img_6.png",width: 30,height: 30),
              //                   ],
              //                 ),
              //               ),
              //               Text("Mathematics",style: GoogleFonts.poppins(
              //                 color: Colors.black,
              //               ),)
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_7.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("English",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_8.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("Chemistry",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),

              //       ],
              //     ),
              //   ),
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 20,top: 10),
              //     child: Row(
              //       children: [
              //         Container(
              //           width: 100,
              //           height: 105,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             border: Border.all(color: Color(0xffFFCD32)),
              //             color: Colors.white,
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
              //                     Image.asset("assets/images/img_6.png",width: 30,height: 30),
              //                   ],
              //                 ),
              //               ),
              //               Text("Mathematics",style: GoogleFonts.poppins(
              //                 color: Colors.black,
              //               ),)
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_7.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("English",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_8.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("Chemistry",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),

              //       ],
              //     ),
              //   ),
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 20,top: 10),
              //     child: Row(
              //       children: [
              //         Container(
              //           width: 100,
              //           height: 105,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             border: Border.all(color: Color(0xffFFCD32)),
              //             color: Colors.white,
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
              //                     Image.asset("assets/images/img_6.png",width: 30,height: 30),
              //                   ],
              //                 ),
              //               ),
              //               Text("Mathematics",style: GoogleFonts.poppins(
              //                 color: Colors.black,
              //               ),)
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_7.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("English",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_8.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("Chemistry",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),

              //       ],
              //     ),
              //   ),
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 20,top: 10),
              //     child: Row(
              //       children: [
              //         Container(
              //           width: 100,
              //           height: 105,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             border: Border.all(color: Color(0xffFFCD32)),
              //             color: Colors.white,
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
              //                     Image.asset("assets/images/img_6.png",width: 30,height: 30),
              //                   ],
              //                 ),
              //               ),
              //               Text("Mathematics",style: GoogleFonts.poppins(
              //                 color: Colors.black,
              //               ),)
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_7.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("English",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_8.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("Chemistry",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),

              //       ],
              //     ),
              //   ),
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 20,top: 10),
              //     child: Row(
              //       children: [
              //         Container(
              //           width: 100,
              //           height: 105,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             border: Border.all(color: Color(0xffFFCD32)),
              //             color: Colors.white,
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
              //                     Image.asset("assets/images/img_6.png",width: 30,height: 30),
              //                   ],
              //                 ),
              //               ),
              //               Text("Mathematics",style: GoogleFonts.poppins(
              //                 color: Colors.black,
              //               ),)
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_7.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("English",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_8.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("Chemistry",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),

              //       ],
              //     ),
              //   ),
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 20,top: 10),
              //     child: Row(
              //       children: [
              //         Container(
              //           width: 100,
              //           height: 105,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             border: Border.all(color: Color(0xffFFCD32)),
              //             color: Colors.white,
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
              //                     Image.asset("assets/images/img_6.png",width: 30,height: 30),
              //                   ],
              //                 ),
              //               ),
              //               Text("Mathematics",style: GoogleFonts.poppins(
              //                 color: Colors.black,
              //               ),)
              //             ],
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_7.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("English",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 10),
              //           child: Container(
              //             width: 100,
              //             height: 105,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 border: Border.all(
              //                     color: Color(0xffFFCD32)
              //                 )

              //             ),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(50),

              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Image.asset("assets/images/img_8.png",width: 30,height: 30),
              //                     ],
              //                   ),
              //                 ),
              //                 Text("Chemistry",style: GoogleFonts.poppins(
              //                     color: Colors.black
              //                 ),)
              //               ],
              //             ),
              //           ),
              //         ),

              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
