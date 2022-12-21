import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class notfication extends StatefulWidget {
  const notfication({Key? key}) : super(key: key);

  @override
  State<notfication> createState() => _notficationState();
}

class _notficationState extends State<notfication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Notifications",style: GoogleFonts.poppins(
            color: Color(0xff213E50),
            fontWeight: FontWeight.bold,
          fontSize: MediaQuery.of(context).size.width/20,
        )),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black),

      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 20,),
                child: Row(
                  children: [
                    Text("On Going",style: GoogleFonts.poppins(
                        color: Color(0xff213E50),
                        fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width/20,
                    )),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Container(
                  width:MediaQuery.of(context).size.width,
                  // height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                   border: Border.all(
                     color: Colors.yellow,
                     width: 1
                   ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/70, left: MediaQuery.of(context).size.width/60, right: MediaQuery.of(context).size.width/80,),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset("assets/images/img_15.png",width: 40,height: 40),
                          title: Text("Math",style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width/23,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                          subtitle: Text("You have a class schedule with Mr Matt",style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width/28,
                          )),
                          trailing: Text("11:30PM",style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width/28,
                            color: Color(0xffFFCD32),
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Container(
                  width:MediaQuery.of(context).size.width,
                  // height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color(0xffB3B4F7),
                        width: 1
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/70, left: MediaQuery.of(context).size.width/60, right: MediaQuery.of(context).size.width/80,),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset("assets/images/img_15.png",width: 40,height: 40),
                          title: Text("Math",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width/23,
                          )),
                          subtitle: Text("You have a class schedule with Mr Matt",style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width/28,
                          )),
                          trailing: Text("11:30PM",style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width/28,
                            color: Color(0xffFFCD32),
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Container(
                  width:MediaQuery.of(context).size.width,
                  // height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color(0xffB3B4F7),
                        width: 1
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/70, left: MediaQuery.of(context).size.width/60, right: MediaQuery.of(context).size.width/80,),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset("assets/images/img_15.png",width: 40,height: 40),
                          title: Text("Math",style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width/23,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                          subtitle: Text("You have a class schedule with Mr Matt",style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width/28,
                          )),
                          trailing: Text("11:30PM",style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width/28,
                            color: Color(0xffFFCD32),
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Row(
                  children: [
                    Text("Others",style: GoogleFonts.poppins(
                        color: Color(0xff213E50),
                        fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width/20,

                    )),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                child: Container(
                  width:MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color(0xffB3B4F7),
                        width: 1
                    ),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading:Image.asset("assets/images/img_16.png",height: 30,width: 30) ,
                        title: Text("Currently, math has a new teacher",style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width/28,

                        )),
                      )

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                child: Container(
                  width:MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color(0xffB3B4F7),
                        width: 1
                    ),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading:Image.asset("assets/images/img_16.png",height: 30,width: 30) ,
                        title: Text("Currently, math has a new teacher",style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width/28,

                        )),
                      )

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                child: Container(
                  width:MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color(0xffB3B4F7),
                        width: 1
                    ),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading:Image.asset("assets/images/img_16.png",height: 30,width: 30) ,
                        title: Text("Currently, math has a new teacher",style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width/28,

                        )),
                      )

                    ],
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
