import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bottom/bottom.dart';
class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Booking History",style: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.width/20,
            color: Colors.black,
            fontWeight: FontWeight.bold
        )),
        leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Padding(
               padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/20,),
               child: Image.asset("assets/images/historyimg.png",width: MediaQuery.of(context).size.width/2,),
             ),
              Text("Elite B",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.width/20,
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.star,color: Color(0xffFFCD32),size: 40.00),
                  Icon(Icons.star,color: Color(0xffFFCD32),size: 40.00),
                  Icon(Icons.star,color: Color(0xffFFCD32),size: 40.00),
                  Icon(Icons.star,color: Color(0xffFFCD32),size: 40.00),
                  Icon(Icons.star,color: Color(0xffFFCD32),size: 40.00),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/40,
              ),
              Container(
                child:  Padding(
                  padding: const EdgeInsets.only(right: 10,left: 10,top: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/3,
                    decoration: BoxDecoration(
                      color: Color(0xffF7F7F7),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.blue,width: 1
                      )
                    ),

                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent, width: 2.0),
                        ),
                        hintText: 'Write some review',
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
              SizedBox(
                height: MediaQuery.of(context).size.height/40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 50),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>pmbottom()));
                  },
                  child: Container(
                    width:MediaQuery.of(context).size.width/0.1,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xffFFCD32),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("Send",style: GoogleFonts.almarai(
                        color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width/20,
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
