import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class favourite extends StatefulWidget {
  const favourite({Key? key}) : super(key: key);

  @override
  State<favourite> createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Favorite",style: GoogleFonts.poppins(
            color: Color(0xff213E50),
            fontWeight: FontWeight.bold,
          fontSize: MediaQuery.of(context).size.width/20,
        )),
        centerTitle: false,
        leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black),

      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/100,bottom: MediaQuery.of(context).size.height/100,left: MediaQuery.of(context).size.width/100),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/30, right: MediaQuery.of(context).size.width/60, left: MediaQuery.of(context).size.width/300,),
                  child: Container(
                    width:MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Color(0xffB3B4F7),
                          width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/100, bottom: MediaQuery.of(context).size.height/50,),
                      child: Column(

                        children: [
                          ListTile(
                            leading: Image.asset("assets/images/img_20.png",width: 60,height: 60),
                            title: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text("Ellie B",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.width/20,
                              )),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Warwick University",style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.width/25,
                                )),
                                Text("You have a class schedule with Mr Matt",style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width/25,

                                )),
                                Row(

                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 05),
                                          child: Container(
                                            width: 60,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xffB3B4F7),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context).size.width/33,
                                            ),)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 05,left: 05),
                                          child: Container(
                                            width: 80,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xffB3B4F7),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context).size.width/33,
                                            ),)),
                                          ),
                                        ),

                                      ],
                                    ),


                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height/150,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Color(0xffFFCD32),size: 15),
                                    Text("5.0\t",style: TextStyle(
                                      color: Color(0xff455A64),
                                      fontWeight: FontWeight.bold,
                                      fontSize: MediaQuery.of(context).size.width/25,
                                    ),),
                                    Text("(116 reviews)",style: GoogleFonts.poppins(
                                        fontSize: MediaQuery.of(context).size.width/27,
                                        color: Color(0xff455A64)
                                    ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.book,color: Color(0xffFFCD32),size: 15),
                                        Text("1282\t",style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width/25,
                                          color: Color(0xff455A64),
                                          fontWeight: FontWeight.bold,
                                        ),),
                                        Text("Completed lessons",style: GoogleFonts.poppins(
                                            fontSize: MediaQuery.of(context).size.width/27,
                                            color: Color(0xff455A64)
                                        ),)
                                      ],
                                    ),


                                  ],
                                ),
                              ],
                            ),
                            trailing: Image.asset("assets/images/img_19.png",width: 30,height: 30),

                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/30, right: MediaQuery.of(context).size.width/60, left: MediaQuery.of(context).size.width/300,),
                  child: Container(
                    width:MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xffB3B4F7),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/100, bottom: MediaQuery.of(context).size.height/50,),
                      child: Column(

                        children: [
                          ListTile(
                            leading: Image.asset("assets/images/img_20.png",width: 60,height: 60),
                            title: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text("Ellie B",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.width/20,
                              )),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Warwick University",style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.width/25,
                                )),
                                Text("You have a class schedule with Mr Matt",style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width/25,

                                )),
                                Row(

                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 05),
                                          child: Container(
                                            width: 60,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xffB3B4F7),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context).size.width/33,
                                            ),)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 05,left: 05),
                                          child: Container(
                                            width: 80,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xffB3B4F7),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context).size.width/33,
                                            ),)),
                                          ),
                                        ),

                                      ],
                                    ),


                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height/150,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Color(0xffFFCD32),size: 15),
                                    Text("5.0\t",style: TextStyle(
                                      color: Color(0xff455A64),
                                      fontWeight: FontWeight.bold,
                                      fontSize: MediaQuery.of(context).size.width/25,
                                    ),),
                                    Text("(116 reviews)",style: GoogleFonts.poppins(
                                        fontSize: MediaQuery.of(context).size.width/27,
                                        color: Color(0xff455A64)
                                    ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.book,color: Color(0xffFFCD32),size: 15),
                                        Text("1282\t",style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width/25,
                                          color: Color(0xff455A64),
                                          fontWeight: FontWeight.bold,
                                        ),),
                                        Text("Completed lessons",style: GoogleFonts.poppins(
                                            fontSize: MediaQuery.of(context).size.width/27,
                                            color: Color(0xff455A64)
                                        ),)
                                      ],
                                    ),


                                  ],
                                ),
                              ],
                            ),
                            trailing: Image.asset("assets/images/img_19.png",width: 30,height: 30),

                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/30, right: MediaQuery.of(context).size.width/60, left: MediaQuery.of(context).size.width/300,),
                  child: Container(
                    width:MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xffB3B4F7),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/100, bottom: MediaQuery.of(context).size.height/50,),
                      child: Column(

                        children: [
                          ListTile(
                            leading: Image.asset("assets/images/img_20.png",width: 60,height: 60),
                            title: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text("Ellie B",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.width/20,
                              )),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Warwick University",style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.width/25,
                                )),
                                Text("You have a class schedule with Mr Matt",style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width/25,

                                )),
                                Row(

                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 05),
                                          child: Container(
                                            width: 60,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xffB3B4F7),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context).size.width/33,
                                            ),)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 05,left: 05),
                                          child: Container(
                                            width: 80,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xffB3B4F7),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context).size.width/33,
                                            ),)),
                                          ),
                                        ),

                                      ],
                                    ),


                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height/150,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Color(0xffFFCD32),size: 15),
                                    Text("5.0\t",style: TextStyle(
                                      color: Color(0xff455A64),
                                      fontWeight: FontWeight.bold,
                                      fontSize: MediaQuery.of(context).size.width/25,
                                    ),),
                                    Text("(116 reviews)",style: GoogleFonts.poppins(
                                        fontSize: MediaQuery.of(context).size.width/27,
                                        color: Color(0xff455A64)
                                    ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.book,color: Color(0xffFFCD32),size: 15),
                                        Text("1282\t",style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width/25,
                                          color: Color(0xff455A64),
                                          fontWeight: FontWeight.bold,
                                        ),),
                                        Text("Completed lessons",style: GoogleFonts.poppins(
                                            fontSize: MediaQuery.of(context).size.width/27,
                                            color: Color(0xff455A64)
                                        ),)
                                      ],
                                    ),


                                  ],
                                ),
                              ],
                            ),
                            trailing: Image.asset("assets/images/img_19.png",width: 30,height: 30),

                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/30, right: MediaQuery.of(context).size.width/60, left: MediaQuery.of(context).size.width/300,),
                  child: Container(
                    width:MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xffB3B4F7),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/100, bottom: MediaQuery.of(context).size.height/50,),
                      child: Column(

                        children: [
                          ListTile(
                            leading: Image.asset("assets/images/img_20.png",width: 60,height: 60),
                            title: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text("Ellie B",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.width/20,
                              )),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Warwick University",style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.width/25,
                                )),
                                Text("You have a class schedule with Mr Matt",style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width/25,

                                )),
                                Row(

                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 05),
                                          child: Container(
                                            width: 60,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xffB3B4F7),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context).size.width/33,
                                            ),)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 05,left: 05),
                                          child: Container(
                                            width: 80,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xffB3B4F7),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context).size.width/33,
                                            ),)),
                                          ),
                                        ),

                                      ],
                                    ),


                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height/150,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Color(0xffFFCD32),size: 15),
                                    Text("5.0\t",style: TextStyle(
                                      color: Color(0xff455A64),
                                      fontWeight: FontWeight.bold,
                                      fontSize: MediaQuery.of(context).size.width/25,
                                    ),),
                                    Text("(116 reviews)",style: GoogleFonts.poppins(
                                        fontSize: MediaQuery.of(context).size.width/27,
                                        color: Color(0xff455A64)
                                    ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.book,color: Color(0xffFFCD32),size: 15),
                                        Text("1282\t",style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width/25,
                                          color: Color(0xff455A64),
                                          fontWeight: FontWeight.bold,
                                        ),),
                                        Text("Completed lessons",style: GoogleFonts.poppins(
                                            fontSize: MediaQuery.of(context).size.width/27,
                                            color: Color(0xff455A64)
                                        ),)
                                      ],
                                    ),


                                  ],
                                ),
                              ],
                            ),
                            trailing: Image.asset("assets/images/img_19.png",width: 30,height: 30),

                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/30, right: MediaQuery.of(context).size.width/60, left: MediaQuery.of(context).size.width/300,),
                  child: Container(
                    width:MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xffB3B4F7),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/100, bottom: MediaQuery.of(context).size.height/50,),
                      child: Column(

                        children: [
                          ListTile(
                            leading: Image.asset("assets/images/img_20.png",width: 60,height: 60),
                            title: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text("Ellie B",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.width/20,
                              )),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Warwick University",style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.width/25,
                                )),
                                Text("You have a class schedule with Mr Matt",style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width/25,

                                )),
                                Row(

                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 05),
                                          child: Container(
                                            width: 60,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xffB3B4F7),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context).size.width/33,
                                            ),)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 05,left: 05),
                                          child: Container(
                                            width: 80,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xffB3B4F7),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context).size.width/33,
                                            ),)),
                                          ),
                                        ),

                                      ],
                                    ),


                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height/150,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Color(0xffFFCD32),size: 15),
                                    Text("5.0\t",style: TextStyle(
                                      color: Color(0xff455A64),
                                      fontWeight: FontWeight.bold,
                                      fontSize: MediaQuery.of(context).size.width/25,
                                    ),),
                                    Text("(116 reviews)",style: GoogleFonts.poppins(
                                        fontSize: MediaQuery.of(context).size.width/27,
                                        color: Color(0xff455A64)
                                    ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.book,color: Color(0xffFFCD32),size: 15),
                                        Text("1282\t",style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width/25,
                                          color: Color(0xff455A64),
                                          fontWeight: FontWeight.bold,
                                        ),),
                                        Text("Completed lessons",style: GoogleFonts.poppins(
                                            fontSize: MediaQuery.of(context).size.width/27,
                                            color: Color(0xff455A64)
                                        ),)
                                      ],
                                    ),


                                  ],
                                ),
                              ],
                            ),
                            trailing: Image.asset("assets/images/img_19.png",width: 30,height: 30),

                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/30, right: MediaQuery.of(context).size.width/60, left: MediaQuery.of(context).size.width/300,),
                  child: Container(
                    width:MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xffB3B4F7),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/100, bottom: MediaQuery.of(context).size.height/50,),
                      child: Column(

                        children: [
                          ListTile(
                            leading: Image.asset("assets/images/img_20.png",width: 60,height: 60),
                            title: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text("Ellie B",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.width/20,
                              )),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Warwick University",style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.width/25,
                                )),
                                Text("You have a class schedule with Mr Matt",style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width/25,

                                )),
                                Row(

                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 05),
                                          child: Container(
                                            width: 60,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xffB3B4F7),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context).size.width/33,
                                            ),)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 05,left: 05),
                                          child: Container(
                                            width: 80,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xffB3B4F7),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context).size.width/33,
                                            ),)),
                                          ),
                                        ),

                                      ],
                                    ),


                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height/150,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Color(0xffFFCD32),size: 15),
                                    Text("5.0\t",style: TextStyle(
                                      color: Color(0xff455A64),
                                      fontWeight: FontWeight.bold,
                                      fontSize: MediaQuery.of(context).size.width/25,
                                    ),),
                                    Text("(116 reviews)",style: GoogleFonts.poppins(
                                        fontSize: MediaQuery.of(context).size.width/27,
                                        color: Color(0xff455A64)
                                    ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.book,color: Color(0xffFFCD32),size: 15),
                                        Text("1282\t",style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width/25,
                                          color: Color(0xff455A64),
                                          fontWeight: FontWeight.bold,
                                        ),),
                                        Text("Completed lessons",style: GoogleFonts.poppins(
                                            fontSize: MediaQuery.of(context).size.width/27,
                                            color: Color(0xff455A64)
                                        ),)
                                      ],
                                    ),


                                  ],
                                ),
                              ],
                            ),
                            trailing: Image.asset("assets/images/img_19.png",width: 30,height: 30),

                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/30, right: MediaQuery.of(context).size.width/60, left: MediaQuery.of(context).size.width/300,),
                  child: Container(
                    width:MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xffB3B4F7),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/100, bottom: MediaQuery.of(context).size.height/50,),
                      child: Column(

                        children: [
                          ListTile(
                            leading: Image.asset("assets/images/img_20.png",width: 60,height: 60),
                            title: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text("Ellie B",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.width/20,
                              )),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Warwick University",style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.width/25,
                                )),
                                Text("You have a class schedule with Mr Matt",style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.width/25,

                                )),
                                Row(

                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 05),
                                          child: Container(
                                            width: 60,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xffB3B4F7),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context).size.width/33,
                                            ),)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 05,left: 05),
                                          child: Container(
                                            width: 80,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xffB3B4F7),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Center(child: Text("Mathmatics",style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context).size.width/33,
                                            ),)),
                                          ),
                                        ),

                                      ],
                                    ),


                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height/150,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Color(0xffFFCD32),size: 15),
                                    Text("5.0\t",style: TextStyle(
                                      color: Color(0xff455A64),
                                      fontWeight: FontWeight.bold,
                                      fontSize: MediaQuery.of(context).size.width/25,
                                    ),),
                                    Text("(116 reviews)",style: GoogleFonts.poppins(
                                        fontSize: MediaQuery.of(context).size.width/27,
                                        color: Color(0xff455A64)
                                    ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.book,color: Color(0xffFFCD32),size: 15),
                                        Text("1282\t",style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width/25,
                                          color: Color(0xff455A64),
                                          fontWeight: FontWeight.bold,
                                        ),),
                                        Text("Completed lessons",style: GoogleFonts.poppins(
                                            fontSize: MediaQuery.of(context).size.width/27,
                                            color: Color(0xff455A64)
                                        ),)
                                      ],
                                    ),


                                  ],
                                ),
                              ],
                            ),
                            trailing: Image.asset("assets/images/img_19.png",width: 30,height: 30),

                          ),
                        ],
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
