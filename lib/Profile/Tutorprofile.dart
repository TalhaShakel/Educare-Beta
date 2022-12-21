import 'package:educare/Profile/History.dart';
import 'package:educare/Profile/paymentmethode.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bottom/Notfications.dart';
import 'profile.dart';
class tutorprofile extends StatefulWidget {
  const tutorprofile({Key? key}) : super(key: key);

  @override
  State<tutorprofile> createState() => _tutorprofileState();
}

class _tutorprofileState extends State<tutorprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Profile",style: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.width/20,
            color: Colors.black,
            fontWeight: FontWeight.bold
        )),
        leading: IconButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => profile(),),
          );
        }, icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black),),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Image.asset("assets/images/img_23.png",height: 50,width: 50),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text("Mrs.Jonny",style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width/25,
                    fontWeight: FontWeight.bold,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Edit Profile ", style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/25,
                      ),),
                      Icon(Icons.arrow_forward_ios,size: 15.0,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 0,left: 5,top: 0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/2.3,
                          height: MediaQuery.of(context).size.height/7,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(5),
                          child: Center(child: Padding(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/20,),
                            child: Column(

                              children: [
                                Text("\$2566",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: MediaQuery.of(context).size.width/13,
                                      fontWeight: FontWeight.w600,
                                    )),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height/100,
                                ),
                                Text("Total Earnings",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: MediaQuery.of(context).size.width/28,
                                    )),
                              ],
                            ),
                          )),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8.39)),
                            border: Border.all(
                              color: Color(0xffFFCD32),
                              width: 1,
                            ),
                          ),),
                        Container(
                          width: MediaQuery.of(context).size.width/2.3,
                          height: MediaQuery.of(context).size.height/7,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(5),
                          child: Center(child: Padding(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/20,),
                            child: Column(

                              children: [
                                Text("\$366",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: MediaQuery.of(context).size.width/13,
                                      fontWeight: FontWeight.w600,
                                    )),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height/100,
                                ),
                                Text("This Month",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: MediaQuery.of(context).size.width/28,
                                    )),
                              ],
                            ),
                          )),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8.39)),
                            border: Border.all(
                              color: Color(0xffFFCD32),
                              width: 1,
                            ),
                          ),),
                      ],
                    ),
                  ),),

              ],

            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,bottom: 10,top: 20),
                child: Text("My Account",style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width/20,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Account Setting", style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width/25,
                    ),),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Most Frequent Students", style: TextStyle(
    fontSize: MediaQuery.of(context).size.width/25,
    ),),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>notfication()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Notifications", style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width/25,
                    ),),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>paymentmethode()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Earnings History", style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/25,
                      ),),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>history()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("My Invited", style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/25,
                      ),),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 15,top: 20,bottom: 50),
                child: InkWell(
                  onTap: (){

                  },
                  child: Container(
                    width:MediaQuery.of(context).size.width,

                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xffFFCD32),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("Logout",style: GoogleFonts.almarai(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width/25,
                    ),)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
