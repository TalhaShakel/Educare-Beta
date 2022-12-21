import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:educare/Categories/category.dart';
import 'package:educare/Getx_Controller/Maincontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../bottom/Notfications.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
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
      body: SingleChildScrollView(
        child: Column(
          // shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 25,
                right: MediaQuery.of(context).size.width / 25,
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
                        fontSize: MediaQuery.of(context).size.width / 28,
                      )),
                  Row(
                    children: [
                      Text("Ready for Your\t",
                          style: GoogleFonts.poppins(
                            color: Color(0xff213E50),
                            fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.of(context).size.width / 20,
                          )),
                      Text("Next Lesson?",
                          style: GoogleFonts.poppins(
                            color: Color(0xffFFCD32),
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width / 20,
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 80,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.34,
                          height: MediaQuery.of(context).size.height / 12,
                          child: TextFormField(
                              decoration: InputDecoration(
                            hintText: "Search  Course",
                            prefixIcon: Icon(Icons.search),
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color(0xffFFCD32),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color(0xffFFCD32),
                                width: 1,
                              ),
                            ),
                          )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 80,
                          right: MediaQuery.of(context).size.width / 80,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => notfication()));
                          },
                          child: Image.asset(
                            "assets/images/Notification.png",
                            width: MediaQuery.of(context).size.width / 10,
                            height: MediaQuery.of(context).size.height / 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //  ******************* New  Start of column for Body **************************************
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 50,
                      bottom: MediaQuery.of(context).size.height / 80,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Categories",
                                style: GoogleFonts.poppins(
                                  color: Color(0xff213E50),
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 20,
                                )),
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
                                    fontSize:
                                        MediaQuery.of(context).size.width / 20,
                                  )),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SubjectTabs(),

                  //  ******************* New  Start of column for Body **************************************
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 80,
                      bottom: MediaQuery.of(context).size.height / 80,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Popular Tutors",
                                style: GoogleFonts.poppins(
                                  color: Color(0xff213E50),
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 20,
                                )),
                            // Text("See all",style: GoogleFonts.poppins(
                            //     color: Color(0xffFFCD32),
                            //     fontWeight: FontWeight.bold,
                            //   fontSize: MediaQuery.of(context).size.width/20,
                            //
                            // ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  TutorTabs(),

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
                                      bottom:
                                          MediaQuery.of(context).size.height /
                                              50),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "9Am",
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
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height /
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
                                                  fontSize:
                                                      MediaQuery.of(context)
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
                                  width:
                                      MediaQuery.of(context).size.width / 1.6,
                                  height:
                                      MediaQuery.of(context).size.height / 6,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFCD32),
                                      borderRadius: BorderRadius.circular(15)),
                                  //error
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width /
                                          10,
                                      left: MediaQuery.of(context).size.width /
                                          35,
                                      top: MediaQuery.of(context).size.height /
                                          70,
                                      bottom:
                                          MediaQuery.of(context).size.height /
                                              50,
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
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
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
                                  width:
                                      MediaQuery.of(context).size.width / 1.33,
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
                                      bottom:
                                          MediaQuery.of(context).size.height /
                                              50),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "12pm",
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
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height /
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
                                                  fontSize:
                                                      MediaQuery.of(context)
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
                                  width:
                                      MediaQuery.of(context).size.width / 1.6,
                                  height:
                                      MediaQuery.of(context).size.height / 6,
                                  decoration: BoxDecoration(
                                      color: Color(0xff42CF96),
                                      borderRadius: BorderRadius.circular(15)),
                                  //error
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width /
                                          10,
                                      left: MediaQuery.of(context).size.width /
                                          35,
                                      top: MediaQuery.of(context).size.height /
                                          70,
                                      bottom:
                                          MediaQuery.of(context).size.height /
                                              50,
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
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
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
                                      bottom:
                                          MediaQuery.of(context).size.height /
                                              50),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "2pm",
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
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.6,
                                  height:
                                      MediaQuery.of(context).size.height / 6,
                                  decoration: BoxDecoration(
                                      color: Color(0xffE48FFF),
                                      borderRadius: BorderRadius.circular(15)),
                                  //error
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width /
                                          10,
                                      left: MediaQuery.of(context).size.width /
                                          35,
                                      top: MediaQuery.of(context).size.height /
                                          70,
                                      bottom:
                                          MediaQuery.of(context).size.height /
                                              50,
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
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
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
      ),
    );
  }
}

class TutorTabs extends StatelessWidget {
  const TutorTabs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection("user")
            .where(
              "tutor",
              isNull: false,
            )
            // .orderBy("time", descending: true)
            // .where("uid",
            //     isNotEqualTo: globalUserid,)
            // .where("uid",
            //     isNotEqualTo: globalUserid)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          print(snapshot);
          if (snapshot.connectionState == ConnectionState.active) {
            // return Text("${snapshot.data!.docs}");
            return
                // Text("${snapshot.data!.docs}");

                Container(
              height: 218.h,
              child: ListView.builder(
                  // physics: ScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    var data = snapshot.data!.docs[index];
                    // return
                    //  Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Text("${snapshot.data!.docs[index]["userEmail"]}"),
                    // );
                    if (data["tutor"] == "" ||
                        data["tutor"] == null ||
                        data["tutor"] == {}) {
                      return Container();
                    }

                    return Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height / 80,
                          ),
                          child: Container(
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
                                  width:
                                      MediaQuery.of(context).size.width / 1.6,
                                  decoration: BoxDecoration(
                                      color: Color(0xffB3B4F7),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height /
                                          80,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.network(
                                                  "${data["profilePic"]}",
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      13,
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "${data["tutor"]["fullName"]}",
                                                      style:
                                                          GoogleFonts.poppins(
                                                        color: Colors.white,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            25,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              100,
                                                    ),
                                                    Image.asset(
                                                      "assets/images/img_12.png",
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              20,
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "Birmingham University",
                                                  style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            35,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "Phychology(Bachelors)",
                                                  style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            35,
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
                                  padding: EdgeInsets.only(
                                    right:
                                        MediaQuery.of(context).size.width / 50,
                                    left:
                                        MediaQuery.of(context).size.width / 50,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            Text(
                                              "Offers:",
                                              style: GoogleFonts.poppins(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    40,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  70,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    140,
                                              ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xffB3B4F7),
                                                  borderRadius:
                                                      BorderRadius.circular(3),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(7.0),
                                                  child: Center(
                                                      child: Text(
                                                    "${data["tutorchild"]["major"]}",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.white,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            40,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  70,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    140,
                                              ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xffB3B4F7),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(7.0),
                                                  child: Center(
                                                      child: Text(
                                                    "${data["tutor"]["teaching"]}",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.white,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            40,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  70,
                                            ),
                                            Text(
                                              "+5 more",
                                              style: GoogleFonts.poppins(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    40,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              100,
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              80,
                                        ),
                                        child: Text(
                                          "${data["tutorRate"]["description"]}",
                                          // "Experienced online tutor in Psychology,\nMathematics,Music Theory, and Biology \nfor students looking...",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.normal,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  40,
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
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  35,
                                            ),
                                          ),
                                          Text(
                                            "(116 reviews)",
                                            style: GoogleFonts.poppins(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    40,
                                                color: Color(0xff455A64)),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          35,
                                                ),
                                              ),
                                              Text(
                                                "Completed lessons",
                                                style: GoogleFonts.poppins(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            40,
                                                    color: Color(0xff455A64)),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "£${data["tutorRate"]["rate"]}",
                                                style: GoogleFonts.poppins(
                                                    color: Color(0xffFFCD32),
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "/hrs",
                                                style: GoogleFonts.poppins(
                                                    color: Color(0xffFFCD32),
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            40,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 30,
                        ),

                        // Padding(
                        //   padding: EdgeInsets.only(
                        //     bottom: MediaQuery.of(context).size.height / 80,
                        //   ),
                        //   child: Container(
                        //     decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         borderRadius: BorderRadius.circular(10),
                        //         boxShadow: [
                        //           BoxShadow(
                        //               color: Colors.grey.withOpacity(0.5),
                        //               blurRadius: 7,
                        //               spreadRadius: 1,
                        //               offset: Offset(0, 1))
                        //         ]),
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         Container(
                        //           width: MediaQuery.of(context).size.width / 1.6,
                        //           decoration: BoxDecoration(
                        //               color: Color(0xffB3B4F7),
                        //               borderRadius: BorderRadius.only(
                        //                   topLeft: Radius.circular(10),
                        //                   topRight: Radius.circular(10))),
                        //           child: Padding(
                        //             padding: EdgeInsets.only(
                        //               top: MediaQuery.of(context).size.height / 80,
                        //             ),
                        //             child: Column(
                        //               crossAxisAlignment: CrossAxisAlignment.start,
                        //               children: [
                        //                 Row(
                        //                   mainAxisAlignment: MainAxisAlignment.start,
                        //                   crossAxisAlignment: CrossAxisAlignment.start,
                        //                   children: [
                        //                     Column(
                        //                       mainAxisAlignment: MainAxisAlignment.center,
                        //                       children: [
                        //                         Image.asset(
                        //                           "assets/images/img_11.png",
                        //                           width: MediaQuery.of(context).size.width / 5,
                        //                           height:
                        //                               MediaQuery.of(context).size.height / 13,
                        //                         ),
                        //                       ],
                        //                     ),
                        //                     Column(
                        //                       crossAxisAlignment: CrossAxisAlignment.start,
                        //                       children: [
                        //                         Row(
                        //                           children: [
                        //                             Text(
                        //                               "Anna",
                        //                               style: GoogleFonts.poppins(
                        //                                 color: Colors.white,
                        //                                 fontSize:
                        //                                     MediaQuery.of(context).size.width /
                        //                                         25,
                        //                                 fontWeight: FontWeight.bold,
                        //                               ),
                        //                             ),
                        //                             SizedBox(
                        //                               width: MediaQuery.of(context).size.width /
                        //                                   100,
                        //                             ),
                        //                             Image.asset(
                        //                               "assets/images/img_12.png",
                        //                               width: MediaQuery.of(context).size.width /
                        //                                   20,
                        //                             ),
                        //                           ],
                        //                         ),
                        //                         Text(
                        //                           "Birmingham University",
                        //                           style: GoogleFonts.poppins(
                        //                             color: Colors.white,
                        //                             fontSize:
                        //                                 MediaQuery.of(context).size.width / 35,
                        //                             fontWeight: FontWeight.bold,
                        //                           ),
                        //                         ),
                        //                         Text(
                        //                           "Phychology(Bachelors)",
                        //                           style: GoogleFonts.poppins(
                        //                             color: Colors.white,
                        //                             fontSize:
                        //                                 MediaQuery.of(context).size.width / 35,
                        //                             fontWeight: FontWeight.bold,
                        //                           ),
                        //                         ),
                        //                       ],
                        //                     ),
                        //                   ],
                        //                 )
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //         Padding(
                        //           padding: EdgeInsets.only(
                        //             right: MediaQuery.of(context).size.width / 50,
                        //             left: MediaQuery.of(context).size.width / 50,
                        //           ),
                        //           child: Column(
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: [
                        //               SingleChildScrollView(
                        //                 scrollDirection: Axis.horizontal,
                        //                 child: Row(
                        //                   children: [
                        //                     Text(
                        //                       "Offers:",
                        //                       style: GoogleFonts.poppins(
                        //                         fontSize:
                        //                             MediaQuery.of(context).size.width / 40,
                        //                         fontWeight: FontWeight.normal,
                        //                       ),
                        //                     ),
                        //                     SizedBox(
                        //                       width: MediaQuery.of(context).size.width / 70,
                        //                     ),
                        //                     Padding(
                        //                       padding: EdgeInsets.only(
                        //                         top: MediaQuery.of(context).size.height / 140,
                        //                       ),
                        //                       child: Container(
                        //                         decoration: BoxDecoration(
                        //                           color: Color(0xffB3B4F7),
                        //                           borderRadius: BorderRadius.circular(3),
                        //                         ),
                        //                         child: Padding(
                        //                           padding: const EdgeInsets.all(7.0),
                        //                           child: Center(
                        //                               child: Text(
                        //                             "Biology",
                        //                             style: GoogleFonts.poppins(
                        //                                 color: Colors.white,
                        //                                 fontSize:
                        //                                     MediaQuery.of(context).size.width /
                        //                                         40,
                        //                                 fontWeight: FontWeight.bold),
                        //                           )),
                        //                         ),
                        //                       ),
                        //                     ),
                        //                     SizedBox(
                        //                       width: MediaQuery.of(context).size.width / 70,
                        //                     ),
                        //                     Padding(
                        //                       padding: EdgeInsets.only(
                        //                         top: MediaQuery.of(context).size.height / 140,
                        //                       ),
                        //                       child: Container(
                        //                         decoration: BoxDecoration(
                        //                           color: Color(0xffB3B4F7),
                        //                           borderRadius: BorderRadius.circular(5),
                        //                         ),
                        //                         child: Padding(
                        //                           padding: const EdgeInsets.all(7.0),
                        //                           child: Center(
                        //                               child: Text(
                        //                             "Mathmatics",
                        //                             style: GoogleFonts.poppins(
                        //                                 color: Colors.white,
                        //                                 fontSize:
                        //                                     MediaQuery.of(context).size.width /
                        //                                         40,
                        //                                 fontWeight: FontWeight.bold),
                        //                           )),
                        //                         ),
                        //                       ),
                        //                     ),
                        //                     SizedBox(
                        //                       width: MediaQuery.of(context).size.width / 70,
                        //                     ),
                        //                     Text(
                        //                       "+5 more",
                        //                       style: GoogleFonts.poppins(
                        //                         fontSize:
                        //                             MediaQuery.of(context).size.width / 40,
                        //                       ),
                        //                     )
                        //                   ],
                        //                 ),
                        //               ),
                        //               Padding(
                        //                 padding: EdgeInsets.only(
                        //                   top: MediaQuery.of(context).size.height / 100,
                        //                   bottom: MediaQuery.of(context).size.height / 80,
                        //                 ),
                        //                 child: Text(
                        //                   "Experienced online tutor in Psychology,\nMathematics,Music Theory, and Biology \nfor students looking...",
                        //                   style: GoogleFonts.poppins(
                        //                       fontWeight: FontWeight.normal,
                        //                       fontSize: MediaQuery.of(context).size.width / 40,
                        //                       color: Color(0xff455A64)),
                        //                 ),
                        //               ),
                        //               Row(
                        //                 children: [
                        //                   Icon(
                        //                     Icons.star,
                        //                     color: Color(0xffFFCD32),
                        //                     size: 15,
                        //                   ),
                        //                   Text(
                        //                     "5.0\t",
                        //                     style: TextStyle(
                        //                       color: Color(0xff455A64),
                        //                       fontWeight: FontWeight.bold,
                        //                       fontSize: MediaQuery.of(context).size.width / 35,
                        //                     ),
                        //                   ),
                        //                   Text(
                        //                     "(116 reviews)",
                        //                     style: GoogleFonts.poppins(
                        //                         fontSize:
                        //                             MediaQuery.of(context).size.width / 40,
                        //                         color: Color(0xff455A64)),
                        //                   )
                        //                 ],
                        //               ),
                        //               Row(
                        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //                 children: [
                        //                   Row(
                        //                     children: [
                        //                       Icon(
                        //                         Icons.book,
                        //                         color: Color(0xffFFCD32),
                        //                         size: 15,
                        //                       ),
                        //                       Text(
                        //                         "1282\t",
                        //                         style: TextStyle(
                        //                           color: Color(0xff455A64),
                        //                           fontWeight: FontWeight.bold,
                        //                           fontSize:
                        //                               MediaQuery.of(context).size.width / 35,
                        //                         ),
                        //                       ),
                        //                       Text(
                        //                         "Completed lessons",
                        //                         style: GoogleFonts.poppins(
                        //                             fontSize:
                        //                                 MediaQuery.of(context).size.width / 40,
                        //                             color: Color(0xff455A64)),
                        //                       )
                        //                     ],
                        //                   ),
                        //                   Row(
                        //                     children: [
                        //                       Text(
                        //                         "£50",
                        //                         style: GoogleFonts.poppins(
                        //                             color: Color(0xffFFCD32),
                        //                             fontSize:
                        //                                 MediaQuery.of(context).size.width / 20,
                        //                             fontWeight: FontWeight.bold),
                        //                       ),
                        //                       Text(
                        //                         "/hrs",
                        //                         style: GoogleFonts.poppins(
                        //                             color: Color(0xffFFCD32),
                        //                             fontSize:
                        //                                 MediaQuery.of(context).size.width / 40,
                        //                             fontWeight: FontWeight.bold),
                        //                       )
                        //                     ],
                        //                   ),
                        //                 ],
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width / 30,
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.only(
                        //     bottom: MediaQuery.of(context).size.height / 80,
                        //   ),
                        //   child: Container(
                        //     decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         borderRadius: BorderRadius.circular(10),
                        //         boxShadow: [
                        //           BoxShadow(
                        //               color: Colors.grey.withOpacity(0.5),
                        //               blurRadius: 7,
                        //               spreadRadius: 1,
                        //               offset: Offset(0, 1))
                        //         ]),
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         Container(
                        //           width: MediaQuery.of(context).size.width / 1.6,
                        //           decoration: BoxDecoration(
                        //               color: Color(0xffB3B4F7),
                        //               borderRadius: BorderRadius.only(
                        //                   topLeft: Radius.circular(10),
                        //                   topRight: Radius.circular(10))),
                        //           child: Padding(
                        //             padding: EdgeInsets.only(
                        //               top: MediaQuery.of(context).size.height / 80,
                        //             ),
                        //             child: Column(
                        //               crossAxisAlignment: CrossAxisAlignment.start,
                        //               children: [
                        //                 Row(
                        //                   mainAxisAlignment: MainAxisAlignment.start,
                        //                   crossAxisAlignment: CrossAxisAlignment.start,
                        //                   children: [
                        //                     Column(
                        //                       mainAxisAlignment: MainAxisAlignment.center,
                        //                       children: [
                        //                         Image.asset(
                        //                           "assets/images/img_11.png",
                        //                           width: MediaQuery.of(context).size.width / 5,
                        //                           height:
                        //                               MediaQuery.of(context).size.height / 13,
                        //                         ),
                        //                       ],
                        //                     ),
                        //                     Column(
                        //                       crossAxisAlignment: CrossAxisAlignment.start,
                        //                       children: [
                        //                         Row(
                        //                           children: [
                        //                             Text(
                        //                               "Anna",
                        //                               style: GoogleFonts.poppins(
                        //                                 color: Colors.white,
                        //                                 fontSize:
                        //                                     MediaQuery.of(context).size.width /
                        //                                         25,
                        //                                 fontWeight: FontWeight.bold,
                        //                               ),
                        //                             ),
                        //                             SizedBox(
                        //                               width: MediaQuery.of(context).size.width /
                        //                                   100,
                        //                             ),
                        //                             Image.asset(
                        //                               "assets/images/img_12.png",
                        //                               width: MediaQuery.of(context).size.width /
                        //                                   20,
                        //                             ),
                        //                           ],
                        //                         ),
                        //                         Text(
                        //                           "Birmingham University",
                        //                           style: GoogleFonts.poppins(
                        //                             color: Colors.white,
                        //                             fontSize:
                        //                                 MediaQuery.of(context).size.width / 35,
                        //                             fontWeight: FontWeight.bold,
                        //                           ),
                        //                         ),
                        //                         Text(
                        //                           "Phychology(Bachelors)",
                        //                           style: GoogleFonts.poppins(
                        //                             color: Colors.white,
                        //                             fontSize:
                        //                                 MediaQuery.of(context).size.width / 35,
                        //                             fontWeight: FontWeight.bold,
                        //                           ),
                        //                         ),
                        //                       ],
                        //                     ),
                        //                   ],
                        //                 )
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //         Padding(
                        //           padding: EdgeInsets.only(
                        //             right: MediaQuery.of(context).size.width / 50,
                        //             left: MediaQuery.of(context).size.width / 50,
                        //           ),
                        //           child: Column(
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: [
                        //               SingleChildScrollView(
                        //                 scrollDirection: Axis.horizontal,
                        //                 child: Row(
                        //                   children: [
                        //                     Text(
                        //                       "Offers:",
                        //                       style: GoogleFonts.poppins(
                        //                         fontSize:
                        //                             MediaQuery.of(context).size.width / 40,
                        //                         fontWeight: FontWeight.normal,
                        //                       ),
                        //                     ),
                        //                     SizedBox(
                        //                       width: MediaQuery.of(context).size.width / 70,
                        //                     ),
                        //                     Padding(
                        //                       padding: EdgeInsets.only(
                        //                         top: MediaQuery.of(context).size.height / 140,
                        //                       ),
                        //                       child: Container(
                        //                         decoration: BoxDecoration(
                        //                           color: Color(0xffB3B4F7),
                        //                           borderRadius: BorderRadius.circular(3),
                        //                         ),
                        //                         child: Padding(
                        //                           padding: const EdgeInsets.all(7.0),
                        //                           child: Center(
                        //                               child: Text(
                        //                             "Biology",
                        //                             style: GoogleFonts.poppins(
                        //                                 color: Colors.white,
                        //                                 fontSize:
                        //                                     MediaQuery.of(context).size.width /
                        //                                         40,
                        //                                 fontWeight: FontWeight.bold),
                        //                           )),
                        //                         ),
                        //                       ),
                        //                     ),
                        //                     SizedBox(
                        //                       width: MediaQuery.of(context).size.width / 70,
                        //                     ),
                        //                     Padding(
                        //                       padding: EdgeInsets.only(
                        //                         top: MediaQuery.of(context).size.height / 140,
                        //                       ),
                        //                       child: Container(
                        //                         decoration: BoxDecoration(
                        //                           color: Color(0xffB3B4F7),
                        //                           borderRadius: BorderRadius.circular(5),
                        //                         ),
                        //                         child: Padding(
                        //                           padding: const EdgeInsets.all(7.0),
                        //                           child: Center(
                        //                               child: Text(
                        //                             "Mathmatics",
                        //                             style: GoogleFonts.poppins(
                        //                                 color: Colors.white,
                        //                                 fontSize:
                        //                                     MediaQuery.of(context).size.width /
                        //                                         40,
                        //                                 fontWeight: FontWeight.bold),
                        //                           )),
                        //                         ),
                        //                       ),
                        //                     ),
                        //                     SizedBox(
                        //                       width: MediaQuery.of(context).size.width / 70,
                        //                     ),
                        //                     Text(
                        //                       "+5 more",
                        //                       style: GoogleFonts.poppins(
                        //                         fontSize:
                        //                             MediaQuery.of(context).size.width / 40,
                        //                       ),
                        //                     )
                        //                   ],
                        //                 ),
                        //               ),
                        //               Padding(
                        //                 padding: EdgeInsets.only(
                        //                   top: MediaQuery.of(context).size.height / 100,
                        //                   bottom: MediaQuery.of(context).size.height / 80,
                        //                 ),
                        //                 child: Text(
                        //                   "Experienced online tutor in Psychology,\nMathematics,Music Theory, and Biology \nfor students looking...",
                        //                   style: GoogleFonts.poppins(
                        //                       fontWeight: FontWeight.normal,
                        //                       fontSize: MediaQuery.of(context).size.width / 40,
                        //                       color: Color(0xff455A64)),
                        //                 ),
                        //               ),
                        //               Row(
                        //                 children: [
                        //                   Icon(
                        //                     Icons.star,
                        //                     color: Color(0xffFFCD32),
                        //                     size: 15,
                        //                   ),
                        //                   Text(
                        //                     "5.0\t",
                        //                     style: TextStyle(
                        //                       color: Color(0xff455A64),
                        //                       fontWeight: FontWeight.bold,
                        //                       fontSize: MediaQuery.of(context).size.width / 35,
                        //                     ),
                        //                   ),
                        //                   Text(
                        //                     "(116 reviews)",
                        //                     style: GoogleFonts.poppins(
                        //                         fontSize:
                        //                             MediaQuery.of(context).size.width / 40,
                        //                         color: Color(0xff455A64)),
                        //                   )
                        //                 ],
                        //               ),
                        //               Row(
                        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //                 children: [
                        //                   Row(
                        //                     children: [
                        //                       Icon(
                        //                         Icons.book,
                        //                         color: Color(0xffFFCD32),
                        //                         size: 15,
                        //                       ),
                        //                       Text(
                        //                         "1282\t",
                        //                         style: TextStyle(
                        //                           color: Color(0xff455A64),
                        //                           fontWeight: FontWeight.bold,
                        //                           fontSize:
                        //                               MediaQuery.of(context).size.width / 35,
                        //                         ),
                        //                       ),
                        //                       Text(
                        //                         "Completed lessons",
                        //                         style: GoogleFonts.poppins(
                        //                             fontSize:
                        //                                 MediaQuery.of(context).size.width / 40,
                        //                             color: Color(0xff455A64)),
                        //                       )
                        //                     ],
                        //                   ),
                        //                   Row(
                        //                     children: [
                        //                       Text(
                        //                         "£50",
                        //                         style: GoogleFonts.poppins(
                        //                             color: Color(0xffFFCD32),
                        //                             fontSize:
                        //                                 MediaQuery.of(context).size.width / 20,
                        //                             fontWeight: FontWeight.bold),
                        //                       ),
                        //                       Text(
                        //                         "/hrs",
                        //                         style: GoogleFonts.poppins(
                        //                             color: Color(0xffFFCD32),
                        //                             fontSize:
                        //                                 MediaQuery.of(context).size.width / 40,
                        //                             fontWeight: FontWeight.bold),
                        //                       )
                        //                     ],
                        //                   ),
                        //                 ],
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width / 30,
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.only(
                        //     bottom: MediaQuery.of(context).size.height / 80,
                        //   ),
                        //   child: Container(
                        //     decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         borderRadius: BorderRadius.circular(10),
                        //         boxShadow: [
                        //           BoxShadow(
                        //               color: Colors.grey.withOpacity(0.5),
                        //               blurRadius: 7,
                        //               spreadRadius: 1,
                        //               offset: Offset(0, 1))
                        //         ]),
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         Container(
                        //           width: MediaQuery.of(context).size.width / 1.6,
                        //           decoration: BoxDecoration(
                        //               color: Color(0xffB3B4F7),
                        //               borderRadius: BorderRadius.only(
                        //                   topLeft: Radius.circular(10),
                        //                   topRight: Radius.circular(10))),
                        //           child: Padding(
                        //             padding: EdgeInsets.only(
                        //               top: MediaQuery.of(context).size.height / 80,
                        //             ),
                        //             child: Column(
                        //               crossAxisAlignment: CrossAxisAlignment.start,
                        //               children: [
                        //                 Row(
                        //                   mainAxisAlignment: MainAxisAlignment.start,
                        //                   crossAxisAlignment: CrossAxisAlignment.start,
                        //                   children: [
                        //                     Column(
                        //                       mainAxisAlignment: MainAxisAlignment.center,
                        //                       children: [
                        //                         Image.asset(
                        //                           "assets/images/img_11.png",
                        //                           width: MediaQuery.of(context).size.width / 5,
                        //                           height:
                        //                               MediaQuery.of(context).size.height / 13,
                        //                         ),
                        //                       ],
                        //                     ),
                        //                     Column(
                        //                       crossAxisAlignment: CrossAxisAlignment.start,
                        //                       children: [
                        //                         Row(
                        //                           children: [
                        //                             Text(
                        //                               "Anna",
                        //                               style: GoogleFonts.poppins(
                        //                                 color: Colors.white,
                        //                                 fontSize:
                        //                                     MediaQuery.of(context).size.width /
                        //                                         25,
                        //                                 fontWeight: FontWeight.bold,
                        //                               ),
                        //                             ),
                        //                             SizedBox(
                        //                               width: MediaQuery.of(context).size.width /
                        //                                   100,
                        //                             ),
                        //                             Image.asset(
                        //                               "assets/images/img_12.png",
                        //                               width: MediaQuery.of(context).size.width /
                        //                                   20,
                        //                             ),
                        //                           ],
                        //                         ),
                        //                         Text(
                        //                           "Birmingham University",
                        //                           style: GoogleFonts.poppins(
                        //                             color: Colors.white,
                        //                             fontSize:
                        //                                 MediaQuery.of(context).size.width / 35,
                        //                             fontWeight: FontWeight.bold,
                        //                           ),
                        //                         ),
                        //                         Text(
                        //                           "Phychology(Bachelors)",
                        //                           style: GoogleFonts.poppins(
                        //                             color: Colors.white,
                        //                             fontSize:
                        //                                 MediaQuery.of(context).size.width / 35,
                        //                             fontWeight: FontWeight.bold,
                        //                           ),
                        //                         ),
                        //                       ],
                        //                     ),
                        //                   ],
                        //                 )
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //         Padding(
                        //           padding: EdgeInsets.only(
                        //             right: MediaQuery.of(context).size.width / 50,
                        //             left: MediaQuery.of(context).size.width / 50,
                        //           ),
                        //           child: Column(
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: [
                        //               SingleChildScrollView(
                        //                 scrollDirection: Axis.horizontal,
                        //                 child: Row(
                        //                   children: [
                        //                     Text(
                        //                       "Offers:",
                        //                       style: GoogleFonts.poppins(
                        //                         fontSize:
                        //                             MediaQuery.of(context).size.width / 40,
                        //                         fontWeight: FontWeight.normal,
                        //                       ),
                        //                     ),
                        //                     SizedBox(
                        //                       width: MediaQuery.of(context).size.width / 70,
                        //                     ),
                        //                     Padding(
                        //                       padding: EdgeInsets.only(
                        //                         top: MediaQuery.of(context).size.height / 140,
                        //                       ),
                        //                       child: Container(
                        //                         decoration: BoxDecoration(
                        //                           color: Color(0xffB3B4F7),
                        //                           borderRadius: BorderRadius.circular(3),
                        //                         ),
                        //                         child: Padding(
                        //                           padding: const EdgeInsets.all(7.0),
                        //                           child: Center(
                        //                               child: Text(
                        //                             "Biology",
                        //                             style: GoogleFonts.poppins(
                        //                                 color: Colors.white,
                        //                                 fontSize:
                        //                                     MediaQuery.of(context).size.width /
                        //                                         40,
                        //                                 fontWeight: FontWeight.bold),
                        //                           )),
                        //                         ),
                        //                       ),
                        //                     ),
                        //                     SizedBox(
                        //                       width: MediaQuery.of(context).size.width / 70,
                        //                     ),
                        //                     Padding(
                        //                       padding: EdgeInsets.only(
                        //                         top: MediaQuery.of(context).size.height / 140,
                        //                       ),
                        //                       child: Container(
                        //                         decoration: BoxDecoration(
                        //                           color: Color(0xffB3B4F7),
                        //                           borderRadius: BorderRadius.circular(5),
                        //                         ),
                        //                         child: Padding(
                        //                           padding: const EdgeInsets.all(7.0),
                        //                           child: Center(
                        //                               child: Text(
                        //                             "Mathmatics",
                        //                             style: GoogleFonts.poppins(
                        //                                 color: Colors.white,
                        //                                 fontSize:
                        //                                     MediaQuery.of(context).size.width /
                        //                                         40,
                        //                                 fontWeight: FontWeight.bold),
                        //                           )),
                        //                         ),
                        //                       ),
                        //                     ),
                        //                     SizedBox(
                        //                       width: MediaQuery.of(context).size.width / 70,
                        //                     ),
                        //                     Text(
                        //                       "+5 more",
                        //                       style: GoogleFonts.poppins(
                        //                         fontSize:
                        //                             MediaQuery.of(context).size.width / 40,
                        //                       ),
                        //                     )
                        //                   ],
                        //                 ),
                        //               ),
                        //               Padding(
                        //                 padding: EdgeInsets.only(
                        //                   top: MediaQuery.of(context).size.height / 100,
                        //                   bottom: MediaQuery.of(context).size.height / 80,
                        //                 ),
                        //                 child: Text(
                        //                   "Experienced online tutor in Psychology,\nMathematics,Music Theory, and Biology \nfor students looking...",
                        //                   style: GoogleFonts.poppins(
                        //                       fontWeight: FontWeight.normal,
                        //                       fontSize: MediaQuery.of(context).size.width / 40,
                        //                       color: Color(0xff455A64)),
                        //                 ),
                        //               ),
                        //               Row(
                        //                 children: [
                        //                   Icon(
                        //                     Icons.star,
                        //                     color: Color(0xffFFCD32),
                        //                     size: 15,
                        //                   ),
                        //                   Text(
                        //                     "5.0\t",
                        //                     style: TextStyle(
                        //                       color: Color(0xff455A64),
                        //                       fontWeight: FontWeight.bold,
                        //                       fontSize: MediaQuery.of(context).size.width / 35,
                        //                     ),
                        //                   ),
                        //                   Text(
                        //                     "(116 reviews)",
                        //                     style: GoogleFonts.poppins(
                        //                         fontSize:
                        //                             MediaQuery.of(context).size.width / 40,
                        //                         color: Color(0xff455A64)),
                        //                   )
                        //                 ],
                        //               ),
                        //               Row(
                        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //                 children: [
                        //                   Row(
                        //                     children: [
                        //                       Icon(
                        //                         Icons.book,
                        //                         color: Color(0xffFFCD32),
                        //                         size: 15,
                        //                       ),
                        //                       Text(
                        //                         "1282\t",
                        //                         style: TextStyle(
                        //                           color: Color(0xff455A64),
                        //                           fontWeight: FontWeight.bold,
                        //                           fontSize:
                        //                               MediaQuery.of(context).size.width / 35,
                        //                         ),
                        //                       ),
                        //                       Text(
                        //                         "Completed lessons",
                        //                         style: GoogleFonts.poppins(
                        //                             fontSize:
                        //                                 MediaQuery.of(context).size.width / 40,
                        //                             color: Color(0xff455A64)),
                        //                       )
                        //                     ],
                        //                   ),
                        //                   Row(
                        //                     children: [
                        //                       Text(
                        //                         "£50",
                        //                         style: GoogleFonts.poppins(
                        //                             color: Color(0xffFFCD32),
                        //                             fontSize:
                        //                                 MediaQuery.of(context).size.width / 20,
                        //                             fontWeight: FontWeight.bold),
                        //                       ),
                        //                       Text(
                        //                         "/hrs",
                        //                         style: GoogleFonts.poppins(
                        //                             color: Color(0xffFFCD32),
                        //                             fontSize:
                        //                                 MediaQuery.of(context).size.width / 40,
                        //                             fontWeight: FontWeight.bold),
                        //                       )
                        //                     ],
                        //                   ),
                        //                 ],
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    );
                  }),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container(
            child: Center(
              child: "Loading...".text.make(),
            ),
          );
        });
  }
}

class SubjectTabs extends StatelessWidget {
  SubjectTabs({
    Key? key,
  }) : super(key: key);

  var list = [
    {"subName": "Mathematics", "img": "assets/images/img_6.png"},
    {"subName": "English", "img": "assets/images/img_7.png"},
    {"subName": "Chemistry", "img": "assets/images/img_8.png"},
  ];
  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());

    return GetBuilder<Controller>(builder: (control) {
      return Container(
          height: 106.h,
          // padding: EdgeInsets.only(
          //   top: MediaQuery.of(context).size.width / 20,
          //   bottom: MediaQuery.of(context).size.width / 20,
          //   left: MediaQuery.of(context).size.width / 35,
          //   right: MediaQuery.of(context).size.width / 35,
          // ),
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: EdgeInsets.only(right: 15.0.w),
                  child: GestureDetector(
                    onTap: () {
                      control.subject = list[i]["subName"].toString();
                      control.refresh();
                    },
                    child: Container(
                      width: 97.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xffFFCD32)),
                        color: control.subject == list[i]["subName"].toString()
                            ? Color(0xffFFCD32)
                            : Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            // top: MediaQuery.of(context).size.width / 20,
                            // bottom: MediaQuery.of(context).size.width / 20,
                            // left: MediaQuery.of(context).size.width / 35,
                            // right: MediaQuery.of(context).size.width / 35,
                            ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("${list[i]["img"]}",
                                      width: 65.w, height: 65.h),
                                ],
                              ),
                            ),
                            Text(
                              "${list[i]["subName"]}",
                              style: GoogleFonts.poppins(
                                  fontSize: 11.sp,
                                  color: control.subject ==
                                          list[i]["subName"].toString()
                                      ? Colors.white
                                      : Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }));
    });

    // Padding(
    //   padding:
    //       EdgeInsets.only(left: MediaQuery.of(context).size.width / 35),
    //   child: Container(
    //     decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(10),
    //         border: Border.all(color: Color(0xffFFCD32))),
    //     child: Padding(
    //       padding: EdgeInsets.only(
    //           top: MediaQuery.of(context).size.width / 17,
    //           bottom: MediaQuery.of(context).size.width / 17,
    //           left: MediaQuery.of(context).size.width / 12,
    //           right: MediaQuery.of(context).size.width / 12),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Container(
    //             decoration: BoxDecoration(
    //               color: Colors.white,
    //               borderRadius: BorderRadius.circular(50),
    //             ),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Image.asset(
    //                   "assets/images/img_7.png",
    //                   width: MediaQuery.of(context).size.width / 9,
    //                   height: MediaQuery.of(context).size.height / 20,
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Text(
    //             "English",
    //             style: GoogleFonts.poppins(
    //               color: Colors.black,
    //               fontSize: MediaQuery.of(context).size.width / 28,
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // ),
    // Padding(
    //   padding:
    //       EdgeInsets.only(left: MediaQuery.of(context).size.width / 35),
    //   child: Container(
    //     decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(10),
    //         border: Border.all(color: Color(0xffFFCD32))),
    //     child: Padding(
    //       padding: EdgeInsets.only(
    //           top: MediaQuery.of(context).size.width / 17,
    //           bottom: MediaQuery.of(context).size.width / 17,
    //           left: MediaQuery.of(context).size.width / 20,
    //           right: MediaQuery.of(context).size.width / 20),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Container(
    //             decoration: BoxDecoration(
    //               color: Colors.white,
    //               borderRadius: BorderRadius.circular(50),
    //             ),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Image.asset(
    //                   "assets/images/img_8.png",
    //                   width: MediaQuery.of(context).size.width / 9,
    //                   height: MediaQuery.of(context).size.height / 20,
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Text(
    //             "Chemistry",
    //             style: GoogleFonts.poppins(
    //               color: Colors.black,
    //               fontSize: MediaQuery.of(context).size.width / 28,
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // ),
    // Padding(
    //   padding:
    //       EdgeInsets.only(left: MediaQuery.of(context).size.width / 35),
    //   child: Container(
    //     decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(10),
    //         border: Border.all(color: Color(0xffFFCD32))),
    //     child: Padding(
    //       padding: EdgeInsets.only(
    //           top: MediaQuery.of(context).size.width / 17,
    //           bottom: MediaQuery.of(context).size.width / 17,
    //           left: MediaQuery.of(context).size.width / 13,
    //           right: MediaQuery.of(context).size.width / 13),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Container(
    //             decoration: BoxDecoration(
    //               color: Colors.white,
    //               borderRadius: BorderRadius.circular(50),
    //             ),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Image.asset(
    //                   "assets/images/img_9.png",
    //                   width: MediaQuery.of(context).size.width / 9,
    //                   height: MediaQuery.of(context).size.height / 20,
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Text(
    //             "Biology",
    //             style: GoogleFonts.poppins(
    //               color: Colors.black,
    //               fontSize: MediaQuery.of(context).size.width / 28,
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // ),
    // Padding(
    //   padding:
    //       EdgeInsets.only(left: MediaQuery.of(context).size.width / 35),
    //   child: Container(
    //     decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(10),
    //         border: Border.all(color: Color(0xffFFCD32))),
    //     child: Padding(
    //       padding: EdgeInsets.only(
    //           top: MediaQuery.of(context).size.width / 17,
    //           bottom: MediaQuery.of(context).size.width / 17,
    //           left: MediaQuery.of(context).size.width / 13,
    //           right: MediaQuery.of(context).size.width / 13),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Container(
    //             decoration: BoxDecoration(
    //               color: Colors.white,
    //               borderRadius: BorderRadius.circular(50),
    //             ),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Image.asset(
    //                   "assets/images/img_10.png",
    //                   width: MediaQuery.of(context).size.width / 9,
    //                   height: MediaQuery.of(context).size.height / 20,
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Text(
    //             "History",
    //             style: GoogleFonts.poppins(
    //               color: Colors.black,
    //               fontSize: MediaQuery.of(context).size.width / 28,
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // ),
  }
}

class popularSubjectTabs extends StatelessWidget {
  popularSubjectTabs({
    Key? key,
  }) : super(key: key);

  var list = [
    {"subName": "Mathematics", "img": "assets/images/img_6.png"},
    {"subName": "English", "img": "assets/images/img_7.png"},
    {"subName": "Chemistry", "img": "assets/images/img_8.png"},
  ];
  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());

    return GetBuilder<Controller>(builder: (control) {
      return Container(
          height: 106.h,
          // padding: EdgeInsets.only(
          //   top: MediaQuery.of(context).size.width / 20,
          //   bottom: MediaQuery.of(context).size.width / 20,
          //   left: MediaQuery.of(context).size.width / 35,
          //   right: MediaQuery.of(context).size.width / 35,
          // ),
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: EdgeInsets.only(right: 15.0.w),
                  child: GestureDetector(
                    onTap: () {
                      control.popularsubject = list[i]["subName"].toString();
                      control.refresh();
                    },
                    child: Container(
                      width: 97.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xffFFCD32)),
                        color: control.popularsubject == list[i]["subName"].toString()
                            ? Color(0xffFFCD32)
                            : Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            // top: MediaQuery.of(context).size.width / 20,
                            // bottom: MediaQuery.of(context).size.width / 20,
                            // left: MediaQuery.of(context).size.width / 35,
                            // right: MediaQuery.of(context).size.width / 35,
                            ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("${list[i]["img"]}",
                                      width: 65.w, height: 65.h),
                                ],
                              ),
                            ),
                            Text(
                              "${list[i]["subName"]}",
                              style: GoogleFonts.poppins(
                                  fontSize: 11.sp,
                                  color: control.popularsubject ==
                                          list[i]["subName"].toString()
                                      ? Colors.white
                                      : Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }));
    });
  }
}
