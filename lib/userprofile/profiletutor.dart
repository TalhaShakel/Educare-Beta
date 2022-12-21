import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bottom/bottom.dart';
import 'about.dart';
import 'review.dart';
class profiletutor extends StatefulWidget {
  const profiletutor({Key? key}) : super(key: key);

  @override
  State<profiletutor> createState() => _profiletutorState();
}

class _profiletutorState extends State<profiletutor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFDFFF5),
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>pmbottom()));
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Image.asset("assets/images/profilebackground.png"),
            Container(
              transform: Matrix4.translationValues(0, -30, 0),
              child: Column(
                children: [
                  Image.asset("assets/images/blackwomen.png",width: 90,height: 90,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Anna MI.",style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width/20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold

                      ),),
                      Image.asset("assets/images/tick.png",width: 20,height: 20,)

                    ],
                  ),
                  Text("Birmingham University - Psychology (Bachelors",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width/30,
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/10,
                          height: MediaQuery.of(context).size.height/23.5,
                          decoration: BoxDecoration(
                            color: Color(0xffFFCD32),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.share,color: Colors.white,size: 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: 97,
                            height: 36,
                            decoration: BoxDecoration(
                              color: Color(0xffFFCD32),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text("Message",style: GoogleFonts.poppins(
                                fontSize: MediaQuery.of(context).size.width/28,
                                color: Colors.white,

                              )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: 97,
                            height: 36,
                            decoration: BoxDecoration(
                              color: Color(0xffFFCD32),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text("Contact",style: GoogleFonts.poppins(
                                fontSize: MediaQuery.of(context).size.width/28,
                                color: Colors.white,

                              )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width/10,
                            height: MediaQuery.of(context).size.height/23.5,
                            decoration: BoxDecoration(
                              color: Color(0xffFFCD32),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child:Icon(Icons.warning,color: Colors.white,size: 15,),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star,color: Color(0xff0FFCD32),size: 12),
                        Text("5.0",style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width/28,
                          fontWeight: FontWeight.bold,
                        )),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("(116 reviews)",style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width/28,
                            fontWeight: FontWeight.normal,
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: 1,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Color(0xffA0A0A0)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Icon(Icons.book,color: Color(0xff0FFCD32),size: 12),
                        ),
                        Text("1282",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width/28,
                        )),
                        Text("completed lessons",style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width/28,
                        )),
                      ],
                    ),
                  ),

                ],

              ),
            ),

            TabBar(
                indicatorColor: Colors.white,
                labelColor: Colors.black,
                unselectedLabelColor: Color(0xffff00a8),

                tabs: [
                  Tab(
                    child: Text("About",style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width/25,
                      color: Colors.black,
                    )),

                  ),
                  Tab(
                    child: Text("Reviews",style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width/25,
                      color: Colors.black,
                    )),

                  ),

                ]),
            Expanded(
              child: TabBarView(
                children: [
                  aboutprofile(),
                  review(),

                ],

              ),
            )
          ],
        ),



      )
    );
  }
}
