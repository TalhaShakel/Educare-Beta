import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Filter/filter.dart';

class searchh extends StatefulWidget {
  const searchh({Key? key}) : super(key: key);

  @override
  State<searchh> createState() => _searchState();
}

class _searchState extends State<searchh> {
  /////////////////////
  String name = "";
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('user').snapshots();
  //////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 30,
              bottom: MediaQuery.of(context).size.height / 35,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Your Location",
                    style: GoogleFonts.poppins(
                      color: Color(0xff213E50),
                      fontSize: MediaQuery.of(context).size.width / 28,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.yellow,
                    ),
                    Text("New York",
                        style: GoogleFonts.poppins(
                          color: Color(0xff213E50),
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width / 25,
                        )),
                  ],
                ),
              ],
            ),
          ),
          leading: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width / 40,
                  right: MediaQuery.of(context).size.width / 40),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => filter()));
                },
                child: Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 50,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.black,
                    )),
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 60,
                left: MediaQuery.of(context).size.width / 35,
                right: MediaQuery.of(context).size.width / 35,
              ),
              child: Container(
                height: 45.h,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search  Chat",
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
                  ),
                  ///////////////
                  onChanged: (val) {
                    setState(() {
                      name = val;
                    });
                  },
                  /////////////////
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 100,
                left: MediaQuery.of(context).size.width / 35,
                right: MediaQuery.of(context).size.width / 35,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("History",
                      style: GoogleFonts.poppins(
                        color: Color(0xff213E50),
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width / 20,
                      )),
                  Text(
                    "clear",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width / 20,
                      color: Color(0xffFFCD32),
                    ),
                  ),
                ],
              ),
            ),
            StreamBuilder<QuerySnapshot>(
                stream: _usersStream,
                builder: (context, snapshots) {
                  return (snapshots.connectionState == ConnectionState.waiting)
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : SizedBox(
                          // height: 500,
                          child: ListView.builder(
                              physics: ScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: snapshots.data!.docs.length,
                              itemBuilder: (context, index) {
                                print(snapshots.data!.docs[index].data());
                                var data = snapshots.data!.docs[index].data()
                                    as Map<String, dynamic>;
                                ;
                                if (name.isEmpty) {
                                  return searchTab(context, data);
                                }
                                if (data['userEmail']
                                    .toString()
                                    .toLowerCase()
                                    .startsWith(name.toLowerCase())) {
                                  return searchTab(context, data);
                                }
                                return Container();
                                // return searchTab(context, data);
                              }),
                        );
                }),
          ],
        ));
  }

  Padding searchTab(BuildContext context, data) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.width / 40,
        left: MediaQuery.of(context).size.width / 35,
        right: MediaQuery.of(context).size.width / 35,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffB3B4F7), width: 1),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/img_20.png",
                width: 60,
                height: MediaQuery.of(context).size.height / 1,
              ),
              title: Text("${data["userEmail"]}",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width / 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Warwick University",
                      style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width / 25,
                          fontWeight: FontWeight.bold)),
                  Text("You have a class schedule with Mr Matt",
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width / 25,
                      )),
                  SingleChildScrollView(
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 150),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 6,
                            height: MediaQuery.of(context).size.height / 25,
                            decoration: BoxDecoration(
                              color: Color(0xffB3B4F7),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                                child: Text(
                              "Biology",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width / 33,
                              ),
                            )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 150,
                            left: MediaQuery.of(context).size.width / 70,
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 4,
                            height: MediaQuery.of(context).size.height / 25,
                            decoration: BoxDecoration(
                              color: Color(0xffB3B4F7),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                                child: Text(
                              "Mathmatics",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width / 33,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              trailing: Image.asset("assets/images/img_19.png",
                  width: 30, height: 30),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
          ],
        ),
      ),
    );
  }
}
