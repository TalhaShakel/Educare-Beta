import 'package:educare/Chat/chatroom.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class chart extends StatefulWidget {
  const chart({Key? key}) : super(key: key);

  @override
  State<chart> createState() => _chartState();
}

class _chartState extends State<chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: ListView(
         children: [
           Column(
             children: [
               //message title
               Padding(
                 padding: EdgeInsets.only(
                   top: MediaQuery.of(context).size.height/60,
                   left: MediaQuery.of(context).size.width/35,
                   right: MediaQuery.of(context).size.width/35,),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Message",style: GoogleFonts.poppins(
                         color: Color(0xff213E50),
                         fontWeight: FontWeight.bold,
                       fontSize: MediaQuery.of(context).size.width/20,
                     )),

                   ],
                 ),
               ),
               Padding(
                 padding: EdgeInsets.only(
                   top: MediaQuery.of(context).size.height/60,
                   left: MediaQuery.of(context).size.width/35,
                   right: MediaQuery.of(context).size.width/35,),
                 child: Container(
                   width: MediaQuery.of(context).size.width,
                   child: TextFormField(
                       decoration:InputDecoration(
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
                       )
                   ),
                 ),
               ),
               //unread title
               Padding(
                 padding: EdgeInsets.only(
                   top: MediaQuery.of(context).size.height/60,
                   left: MediaQuery.of(context).size.width/35,
                   right: MediaQuery.of(context).size.width/35,),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Unread",style: GoogleFonts.poppins(
                         color: Color(0xff213E50),
                         fontWeight: FontWeight.bold,
                       fontSize: MediaQuery.of(context).size.width/20,

                     )),

                   ],
                 ),
               ),
               //ben,ellie
               Padding(
                 padding: EdgeInsets.only(
                   top: MediaQuery.of(context).size.width/100,
                   left: MediaQuery.of(context).size.width/35,
                   right: MediaQuery.of(context).size.width/35,),
                 child: Container(
                   width:MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     border: Border.all(
                         color: Colors.yellow,
                         width: 1
                     ),
                   ),
                   child: Column(
                     children: [
                       InkWell(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>chatroom()));
                         },
                         child: Padding(
                           padding: EdgeInsets.all(MediaQuery.of(context).size.width/100),
                           child: ListTile(
                             leading: Image.asset("assets/images/img_18.png",width: MediaQuery.of(context).size.width/10,height: MediaQuery.of(context).size.height/10),
                             title: Text("Ben",style: GoogleFonts.poppins(
                               color: Colors.black,
                               fontWeight: FontWeight.bold,
                               fontSize: MediaQuery.of(context).size.width/25,
                             )),
                             subtitle: Text("Jack:Sounds good",style: GoogleFonts.poppins(
                               fontSize: MediaQuery.of(context).size.width/28,
                             )),
                             trailing: Text("11:30PM",style: GoogleFonts.poppins(
                               fontSize: MediaQuery.of(context).size.width/28,
                               color: Color(0xffFFCD32),
                             )),

                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
               Padding(
                 padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/30,
                   left: MediaQuery.of(context).size.width/35,
                   right: MediaQuery.of(context).size.width/35,),
                 child: Container(
                   width:MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     border: Border.all(
                         color: Colors.yellow,
                         width: 1
                     ),
                   ),
                   child: Padding(
                     padding: EdgeInsets.all(MediaQuery.of(context).size.width/100),
                     child: Column(
                       children: [
                         ListTile(
                           leading: Image.asset("assets/images/img_15.png",width: MediaQuery.of(context).size.width/10,height: MediaQuery.of(context).size.height/10),
                           title: Text("Ellie B",style: GoogleFonts.poppins(
                             color: Colors.black,
                             fontSize: MediaQuery.of(context).size.width/25,
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
               //others title
               Padding(
                 padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/30,
                   left: MediaQuery.of(context).size.width/35,
                   right: MediaQuery.of(context).size.width/35,),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Others",style: GoogleFonts.poppins(
                         color: Color(0xff213E50),
                         fontWeight: FontWeight.bold,
                       fontSize: MediaQuery.of(context).size.width/20,

                     )),

                   ],
                 ),
               ),
               //sania,harry
               Padding(
                 padding:EdgeInsets.only(top: MediaQuery.of(context).size.width/30,
                   left: MediaQuery.of(context).size.width/35,
                   right: MediaQuery.of(context).size.width/35,),
                 child: Container(
                   width:MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     border: Border.all(
                         color: Color(0xffB3B4F7),
                         width: 1
                     ),
                   ),
                   child: Padding(
                     padding: EdgeInsets.all(MediaQuery.of(context).size.width/100),
                     child: Column(
                       children: [
                         ListTile(
                           leading: Image.asset("assets/images/img_15.png",width: MediaQuery.of(context).size.width/10,height: MediaQuery.of(context).size.height/10),
                           title: Text("Sania",style: GoogleFonts.poppins(
                             color: Colors.black,
                             fontWeight: FontWeight.bold,
                             fontSize: MediaQuery.of(context).size.width/25,
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
                 padding:EdgeInsets.only(top: MediaQuery.of(context).size.width/30,
                   left: MediaQuery.of(context).size.width/35,
                   right: MediaQuery.of(context).size.width/35,),
                 child: Container(
                   width:MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     border: Border.all(
                         color: Color(0xffB3B4F7),
                         width: 1
                     ),
                   ),
                   child: Padding(
                     padding: EdgeInsets.all(MediaQuery.of(context).size.width/100),
                     child: Column(
                       children: [
                         ListTile(
                           leading: Image.asset("assets/images/img_17.png",width: MediaQuery.of(context).size.width/10,height: MediaQuery.of(context).size.height/10),
                           title: Text("Harry",style: GoogleFonts.poppins(
                             fontSize: MediaQuery.of(context).size.width/25,
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
             ],
           )
         ],
       ),
    );
  }
}
