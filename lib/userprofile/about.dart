import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class aboutprofile extends StatefulWidget {
  const aboutprofile({Key? key}) : super(key: key);

  @override
  State<aboutprofile> createState() => _aboutprofileState();
}

class _aboutprofileState extends State<aboutprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 05,right: 05,top: 05),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF7F7F7)


              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10,left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About me",style: GoogleFonts.poppins(
                      color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width/25,
                      fontWeight: FontWeight.bold
                    )),
                    Text("I am an Oxford postgraduate student and fluent in Spanish, having grown up in Spain with a first-class degree in English Literature from Durham University. As a Spanish tutor I believe in a complete immersion  in the language, so I will carry out as much of thesession in Spanish as possible...",style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width/25,

                    ),)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 05,right: 05,top: 05),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF7F7F7)


              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10,left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About my sessions",style: GoogleFonts.poppins(
                      color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width/25,
                      fontWeight: FontWeight.bold
                    )),
                    Text("I am an Oxford postgraduate student and fluent in Spanish, having grown up in Spain with a first-class degree in English Literature from Durham University. As a Spanish tutor I believe in a complete immersion  in the language, so I will carry out as much of thesession in Spanish as possible...",style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width/25,

                    ),)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 30, bottom: 40),
            child: InkWell(
              onTap: (){
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
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width/100,
              left: MediaQuery.of(context).size.width/17,
              right: MediaQuery.of(context).size.width/35,),
            child: Text("Requirements",style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.width/25,
                fontWeight: FontWeight.bold
            )),
          ),
          Container(
            child:  Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/40, left: MediaQuery.of(context).size.width/35, right: MediaQuery.of(context).size.width/35,),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/4,
                decoration: BoxDecoration(
                  color: Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent, width: 2.0),
                    ),
                    hintText: 'A description of your job requirements',
                  ),
                ),

                // TextFormField(
                //     decoration:InputDecoration(
                //       hintText: "   Write some review",
                //       fillColor: Colors.white,
                //       focusedBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10),
                //         borderSide: BorderSide(
                //           color: Colors.blue,
                //         ),
                //       ),
                //       enabledBorder: InputBorder.none
                //     )
                // ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width/40,
              left: MediaQuery.of(context).size.width/17,
              right: MediaQuery.of(context).size.width/35,),
            child: Text("Rate Offer",style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.width/25,
                fontWeight: FontWeight.bold
            )),
          ),
          Container(
            child:  Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/40, left: MediaQuery.of(context).size.width/35, right: MediaQuery.of(context).size.width/35,),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent, width: 2.0),
                    ),
                    hintText: '\$30/hours',
                  ),
                ),

                // TextFormField(
                //     decoration:InputDecoration(
                //       hintText: "   Write some review",
                //       fillColor: Colors.white,
                //       focusedBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10),
                //         borderSide: BorderSide(
                //           color: Colors.blue,
                //         ),
                //       ),
                //       enabledBorder: InputBorder.none
                //     )
                // ),
              ),
            ),
          ),


          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width/30,
              left: MediaQuery.of(context).size.width/35,
              right: MediaQuery.of(context).size.width/35,),
            child: InkWell(
              child: Container(
                width:343,
                height: 67,
                decoration: BoxDecoration(
                    color: Color(0xffFFCD32),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text("Send Invite",style: GoogleFonts.almarai(
                    color: Colors.white
                ),)),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/20,
          ),
        ],
      ),
    ],
    )),
    ));
    },
    );
    },
              child: Container(
                height: 64,
                decoration: BoxDecoration(
                    color: Color(0xffFFCD32),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text("Hiring Now",style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width/20,
                  color: Colors.white,

                ),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}