import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class review extends StatefulWidget {
  const review({Key? key}) : super(key: key);

  @override
  State<review> createState() => _reviewState();
}

class _reviewState extends State<review> {
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
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/100,left: MediaQuery.of(context).size.width/40,right:MediaQuery.of(context).size.width/40,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("5",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width/8,
                            fontWeight: FontWeight.bold
                        )),
                        Row(
                          children: [
                            Icon(Icons.star,size: MediaQuery.of(context).size.width/19,
                              color: Color(0xffFFCD32),),
                            Icon(Icons.star,size: MediaQuery.of(context).size.width/19,
                              color: Color(0xffFFCD32),),
                            Icon(Icons.star,size: MediaQuery.of(context).size.width/19,
                              color: Color(0xffFFCD32),),
                            Icon(Icons.star,size: MediaQuery.of(context).size.width/19,
                              color: Color(0xffFFCD32),),
                            Icon(Icons.star,size: MediaQuery.of(context).size.width/19,
                              color: Color(0xffFFCD32),),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text("(116 reviews)",style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width/28,
                            fontWeight: FontWeight.normal,
                          )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/25, ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.star,size: MediaQuery.of(context).size.width/19,
                                color: Color(0xffFFCD32),),
                              Icon(Icons.star,size: MediaQuery.of(context).size.width/19,
                                color: Color(0xffFFCD32),),
                              Icon(Icons.star,size: MediaQuery.of(context).size.width/19,
                                color: Color(0xffFFCD32),),
                              Icon(Icons.star,size: MediaQuery.of(context).size.width/19,
                                color: Color(0xffFFCD32),),
                              Icon(Icons.star,size: MediaQuery.of(context).size.width/19,
                                color: Color(0xffFFCD32),),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/100,),
                            child: Column(
                              children: [
                                Text("5",style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width/28,
                                  fontWeight: FontWeight.normal,
                                )),
                                Text("4",style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width/28,
                                  fontWeight: FontWeight.normal,
                                )),
                                Text("3",style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width/28,
                                  fontWeight: FontWeight.normal,
                                )),
                                Text("2",style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width/28,
                                  fontWeight: FontWeight.normal,
                                )),
                                Text("1",style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width/28,
                                  fontWeight: FontWeight.normal,
                                )),
                              ],

                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/100,),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/60, left: MediaQuery.of(context).size.width/100,),
                                  child: Container(
                                    height: 5,
                                    width: MediaQuery.of(context).size.width/4,

                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/25, left: MediaQuery.of(context).size.width/100,),
                                  child: Container(
                                    height: 5,
                                    width: MediaQuery.of(context).size.width/4,

                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/25, left: MediaQuery.of(context).size.width/100,),
                                  child: Container(
                                    height: 5,
                                    width: MediaQuery.of(context).size.width/4,

                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/25, left: MediaQuery.of(context).size.width/100,),
                                  child: Container(
                                    height: 5,
                                    width: MediaQuery.of(context).size.width/4,

                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/25, left: MediaQuery.of(context).size.width/100,),
                                  child: Container(
                                    height: 5,
                                    width: MediaQuery.of(context).size.width/4,

                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/60,),
                            child: Column(
                              children: [
                                Text("113",style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width/28,
                                  fontWeight: FontWeight.normal,
                                )),
                                Text("3",style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width/28,
                                  fontWeight: FontWeight.normal,
                                )),
                                Text("0",style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width/28,
                                  fontWeight: FontWeight.normal,
                                )),
                                Text("0",style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width/28,
                                  fontWeight: FontWeight.normal,
                                )),
                                Text("0",style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width/28,
                                  fontWeight: FontWeight.normal,
                                )),
                              ],

                            ),
                          ),
                        ],
                      ),
                    ),

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
                  color: Color(0xffFFFFFF)


              ),
              child: Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/100,left: MediaQuery.of(context).size.width/40,right:MediaQuery.of(context).size.width/40,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/30, ),
                      child: Container(
                        width:MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF7F7F7),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image.asset("assets/images/img_15.png",width: 40,height: 40),
                              title: Padding(
                                padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/25,),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star,size: MediaQuery.of(context).size.width/25,
                                          color: Color(0xffFFCD32),),
                                        Icon(Icons.star,size: MediaQuery.of(context).size.width/25,
                                          color: Color(0xffFFCD32),),
                                        Icon(Icons.star,size: MediaQuery.of(context).size.width/25,
                                          color: Color(0xffFFCD32),),
                                        Icon(Icons.star,size: MediaQuery.of(context).size.width/25,
                                          color: Color(0xffFFCD32),),
                                        Icon(Icons.star,size: MediaQuery.of(context).size.width/25,
                                          color: Color(0xffFFCD32),),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: MediaQuery.of(context).size.height/40,
                                              ),
                                              Text("Lindsey",style: GoogleFonts.poppins(
                                                fontSize: MediaQuery.of(context).size.width/35,
                                                fontWeight: FontWeight.w600,
                                              )),
                                              Text("Parent from Stoke-on-Trent",style: GoogleFonts.poppins(
                                                fontSize: MediaQuery.of(context).size.width/40,
                                                fontWeight: FontWeight.normal,
                                              )),
                                            ],
                                          ),
                                          Text("Step A. is beyond amazing, my son managed to push his chemistry grade up massively thanks to Muin. His lessons are interesting and tailored to what the student needs and he is a really nice guy.",style: GoogleFonts.poppins(
                                            fontSize: MediaQuery.of(context).size.width/40,
                                            fontWeight: FontWeight.normal,
                                          )),
                                          SizedBox(
                                            height: MediaQuery.of(context).size.height/70,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Text("25 Aug",style: GoogleFonts.poppins(
                                fontSize: MediaQuery.of(context).size.width/28,
                                color: Colors.black,
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/30, ),
                      child: Container(
                        width:MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF7F7F7),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image.asset("assets/images/img_15.png",width: 40,height: 40),
                              title: Padding(
                                padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/25,),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star,size: MediaQuery.of(context).size.width/25,
                                          color: Color(0xffFFCD32),),
                                        Icon(Icons.star,size: MediaQuery.of(context).size.width/25,
                                          color: Color(0xffFFCD32),),
                                        Icon(Icons.star,size: MediaQuery.of(context).size.width/25,
                                          color: Color(0xffFFCD32),),
                                        Icon(Icons.star,size: MediaQuery.of(context).size.width/25,
                                          color: Color(0xffFFCD32),),
                                        Icon(Icons.star,size: MediaQuery.of(context).size.width/25,
                                          color: Color(0xffFFCD32),),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: MediaQuery.of(context).size.height/40,
                                              ),
                                              Text("Lindsey",style: GoogleFonts.poppins(
                                                fontSize: MediaQuery.of(context).size.width/35,
                                                fontWeight: FontWeight.w600,
                                              )),
                                              Text("Parent from Stoke-on-Trent",style: GoogleFonts.poppins(
                                                fontSize: MediaQuery.of(context).size.width/40,
                                                fontWeight: FontWeight.normal,
                                              )),
                                            ],
                                          ),
                                          Text("Step A. is beyond amazing, my son managed to push his chemistry grade up massively thanks to Muin. His lessons are interesting and tailored to what the student needs and he is a really nice guy.",style: GoogleFonts.poppins(
                                            fontSize: MediaQuery.of(context).size.width/40,
                                            fontWeight: FontWeight.normal,
                                          )),
                                          SizedBox(
                                            height: MediaQuery.of(context).size.height/70,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Text("25 Aug",style: GoogleFonts.poppins(
                                fontSize: MediaQuery.of(context).size.width/28,
                                color: Colors.black,
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/30, ),
                      child: Container(
                        width:MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF7F7F7),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image.asset("assets/images/img_15.png",width: 40,height: 40),
                              title: Padding(
                                padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/25,),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star,size: MediaQuery.of(context).size.width/25,
                                          color: Color(0xffFFCD32),),
                                        Icon(Icons.star,size: MediaQuery.of(context).size.width/25,
                                          color: Color(0xffFFCD32),),
                                        Icon(Icons.star,size: MediaQuery.of(context).size.width/25,
                                          color: Color(0xffFFCD32),),
                                        Icon(Icons.star,size: MediaQuery.of(context).size.width/25,
                                          color: Color(0xffFFCD32),),
                                        Icon(Icons.star,size: MediaQuery.of(context).size.width/25,
                                          color: Color(0xffFFCD32),),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: MediaQuery.of(context).size.height/40,
                                              ),
                                              Text("Lindsey",style: GoogleFonts.poppins(
                                                fontSize: MediaQuery.of(context).size.width/35,
                                                fontWeight: FontWeight.w600,
                                              )),
                                              Text("Parent from Stoke-on-Trent",style: GoogleFonts.poppins(
                                                fontSize: MediaQuery.of(context).size.width/40,
                                                fontWeight: FontWeight.normal,
                                              )),
                                            ],
                                          ),
                                          Text("Step A. is beyond amazing, my son managed to push his chemistry grade up massively thanks to Muin. His lessons are interesting and tailored to what the student needs and he is a really nice guy.",style: GoogleFonts.poppins(
                                            fontSize: MediaQuery.of(context).size.width/40,
                                            fontWeight: FontWeight.normal,
                                          )),
                                          SizedBox(
                                            height: MediaQuery.of(context).size.height/70,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Text("25 Aug",style: GoogleFonts.poppins(
                                fontSize: MediaQuery.of(context).size.width/28,
                                color: Colors.black,
                              )),
                            ),
                          ],
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
              ),
            ),
          ),


        ],
      ),
    );
  }
}

