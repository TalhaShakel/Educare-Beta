import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'History.dart';
class history1 extends StatefulWidget {
  const history1({Key? key}) : super(key: key);

  @override
  State<history1> createState() => _history1State();
}

class _history1State extends State<history1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Booking History",style: GoogleFonts.poppins(
          color: Color(0xff213E50),
          fontWeight: FontWeight.bold,
          fontSize: MediaQuery.of(context).size.width/20,
        )),
        centerTitle: false,
        leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black),

      ),
      body: ListView(
        children: [
          ListTile(
            leading: Text("Subject",style: GoogleFonts.poppins(
              color: Color(0xff213E50),
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery.of(context).size.width/20,


            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0,bottom: 10,left: 05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 05,top: 0),
                  child: Container(
                    width:MediaQuery.of(context).size.width,
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
                          leading: Image.asset("assets/images/img_15.png",width: MediaQuery.of(context).size.width/7,height: MediaQuery.of(context).size.height,),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 10,),
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
                              Text("Birmingham University Psychology (Bachelors)",style: GoogleFonts.poppins(
                                fontSize: MediaQuery.of(context).size.width/25,

                              )),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 05),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffB3B4F7),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/40, left: MediaQuery.of(context).size.width/35, right: MediaQuery.of(context).size.width/35,bottom: MediaQuery.of(context).size.width/40,),
                                          child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context).size.width/40,
                                          ),)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 05,left: 05),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffB3B4F7),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/40, left: MediaQuery.of(context).size.width/35, right: MediaQuery.of(context).size.width/35,bottom: MediaQuery.of(context).size.width/40,),
                                          child: Center(child: Text("Maths",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context).size.width/40,
                                          ),)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: 05,left: 05),
                                        child: Text("+5 more",style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontSize: MediaQuery.of(context).size.width/40,
                                        ),),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height/150,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/300,right:MediaQuery.of(context).size.width/20, top: MediaQuery.of(context).size.height/80,bottom: MediaQuery.of(context).size.height/80),
                                child: InkWell(
                                  onTap: (){
                                    _historyModalBottomSheet(context);

                                  },
                                  child: Container(
                                    width:MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height/20,

                                    decoration: BoxDecoration(
                                      color: Color(0xffFFCD32),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(child: Text("Complete",style: GoogleFonts.almarai(
                                      color: Colors.white,
                                      fontSize: MediaQuery.of(context).size.width/20,
                                    ),),

                                    ),
                                  ),

                                ),
                              ),

                            ],
                          ),
                          trailing: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("\$50",style: GoogleFonts.poppins(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.w600,
                                      fontSize: MediaQuery.of(context).size.width/20,
                                    ),),
                                    Text("/hrs",style: GoogleFonts.poppins(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.normal,
                                      fontSize: MediaQuery.of(context).size.width/30,
                                    ),),
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height/150,
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
          ListTile(
            leading: Text("History",style: GoogleFonts.poppins(
              color: Color(0xff213E50),
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery.of(context).size.width/20,


            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0,bottom: 10,left: 05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 05,top: 10),
                  child: Container(
                    width:MediaQuery.of(context).size.width,
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
                          leading: Image.asset("assets/images/img_15.png",width: MediaQuery.of(context).size.width/7,height: MediaQuery.of(context).size.height,),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 10,),
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
                              Text("Birmingham University Psychology (Bachelors)",style: GoogleFonts.poppins(
                                fontSize: MediaQuery.of(context).size.width/25,

                              )),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 05),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffB3B4F7),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/40, left: MediaQuery.of(context).size.width/35, right: MediaQuery.of(context).size.width/35,bottom: MediaQuery.of(context).size.width/40,),
                                          child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context).size.width/40,
                                          ),)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 05,left: 05),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffB3B4F7),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/40, left: MediaQuery.of(context).size.width/35, right: MediaQuery.of(context).size.width/35,bottom: MediaQuery.of(context).size.width/40,),
                                          child: Center(child: Text("Maths",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context).size.width/40,
                                          ),)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 05,left: 05),
                                      child: Text("+5 more",style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: MediaQuery.of(context).size.width/40,
                                      ),),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height/110,
                              ),

                            ],
                          ),
                          trailing: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star,size: MediaQuery.of(context).size.width/30,
                                    color: Color(0xffFFCD32),),
                                    Icon(Icons.star,size: MediaQuery.of(context).size.width/30,
                                      color: Color(0xffFFCD32),),
                                    Icon(Icons.star,size: MediaQuery.of(context).size.width/30,
                                      color: Color(0xffFFCD32),),
                                    Icon(Icons.star,size: MediaQuery.of(context).size.width/30,
                                      color: Color(0xffFFCD32),),
                                    Icon(Icons.star,size: MediaQuery.of(context).size.width/30,
                                      color: Color(0xffFFCD32),),
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height/150,
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
          Padding(
            padding: const EdgeInsets.only(top: 0,bottom: 10,left: 05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 05,top: 10),
                  child: Container(
                    width:MediaQuery.of(context).size.width,
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
                          leading: Image.asset("assets/images/img_15.png",width: MediaQuery.of(context).size.width/7,height: MediaQuery.of(context).size.height,),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 10,),
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
                              Text("Birmingham University Psychology (Bachelors)",style: GoogleFonts.poppins(
                                fontSize: MediaQuery.of(context).size.width/25,

                              )),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 05),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffB3B4F7),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/40, left: MediaQuery.of(context).size.width/35, right: MediaQuery.of(context).size.width/35,bottom: MediaQuery.of(context).size.width/40,),
                                          child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context).size.width/40,
                                          ),)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 05,left: 05),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffB3B4F7),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/40, left: MediaQuery.of(context).size.width/35, right: MediaQuery.of(context).size.width/35,bottom: MediaQuery.of(context).size.width/40,),
                                          child: Center(child: Text("Maths",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context).size.width/40,
                                          ),)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 05,left: 05),
                                      child: Text("+5 more",style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: MediaQuery.of(context).size.width/40,
                                      ),),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height/110,
                              ),

                            ],
                          ),
                          trailing: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star,size: MediaQuery.of(context).size.width/30,
                                      color: Color(0xffFFCD32),),
                                    Icon(Icons.star,size: MediaQuery.of(context).size.width/30,
                                      color: Color(0xffFFCD32),),
                                    Icon(Icons.star,size: MediaQuery.of(context).size.width/30,
                                      color: Color(0xffFFCD32),),
                                    Icon(Icons.star,size: MediaQuery.of(context).size.width/30,
                                      color: Color(0xffFFCD32),),
                                    Icon(Icons.star,size: MediaQuery.of(context).size.width/30,
                                      color: Color(0xffFFCD32),),
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height/150,
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
          Padding(
            padding: const EdgeInsets.only(top: 0,bottom: 10,left: 05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 05,top: 10),
                  child: Container(
                    width:MediaQuery.of(context).size.width,
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
                          leading: Image.asset("assets/images/img_15.png",width: MediaQuery.of(context).size.width/7,height: MediaQuery.of(context).size.height,),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 10,),
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
                              Text("Birmingham University Psychology (Bachelors)",style: GoogleFonts.poppins(
                                fontSize: MediaQuery.of(context).size.width/25,

                              )),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 05),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffB3B4F7),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/40, left: MediaQuery.of(context).size.width/35, right: MediaQuery.of(context).size.width/35,bottom: MediaQuery.of(context).size.width/40,),
                                          child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context).size.width/40,
                                          ),)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 05,left: 05),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffB3B4F7),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/40, left: MediaQuery.of(context).size.width/35, right: MediaQuery.of(context).size.width/35,bottom: MediaQuery.of(context).size.width/40,),
                                          child: Center(child: Text("Maths",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context).size.width/40,
                                          ),)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 05,left: 05),
                                      child: Text("+5 more",style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: MediaQuery.of(context).size.width/40,
                                      ),),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height/110,
                              ),

                            ],
                          ),
                          trailing: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star,size: MediaQuery.of(context).size.width/30,
                                      color: Color(0xffFFCD32),),
                                    Icon(Icons.star,size: MediaQuery.of(context).size.width/30,
                                      color: Color(0xffFFCD32),),
                                    Icon(Icons.star,size: MediaQuery.of(context).size.width/30,
                                      color: Color(0xffFFCD32),),
                                    Icon(Icons.star,size: MediaQuery.of(context).size.width/30,
                                      color: Color(0xffFFCD32),),
                                    Icon(Icons.star,size: MediaQuery.of(context).size.width/30,
                                      color: Color(0xffFFCD32),),
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height/150,
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

    );
  }
}
void _historyModalBottomSheet(context) {
  showModalBottomSheet(
      enableDrag: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20))
      ),
      context: context,
      builder: (BuildContext bc) {
        return Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/20),
                  child: Image.asset("assets/images/moneyperson.png", width: MediaQuery.of(context).size.width/2,),
                ),
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/20),
                  child: Text("Complete Your Pending Payment\nof \$130",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.width/23,
                    fontWeight: FontWeight.bold,
                  ),),
                ),

                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/15),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>history()));
                    },
                    child: Container(
                      width:343,
                      height: 67,
                      decoration: BoxDecoration(
                          color: Color(0xffFFCD32),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text("Accept",style: GoogleFonts.poppins(
                          color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width/23,
                      ),)),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/80,
                ),
              ],
            )
        );
      }
  );
}

