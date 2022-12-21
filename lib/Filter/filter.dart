import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../bottom/bottom.dart';
import '../bottom/filterbottom.dart';
class filter extends StatefulWidget {
  const filter({Key? key}) : super(key: key);


  @override
  State<filter> createState() => _filterState();
}

class _filterState extends State<filter> {
  var selectedRange = const RangeValues(0.2, 0.5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>searchbottom()));
        }, icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView(
          children: [
            // subject haiding
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
              child: Text("Subject",style: GoogleFonts.poppins(
                color: Color(0xff213E50),
                fontWeight: FontWeight.w600,
                fontSize: MediaQuery.of(context).size.width/27,
              )),
            ),
            // subject buttons
            Padding(
              padding: const EdgeInsets.only(top:10, left: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFC100),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/50,
                          bottom: MediaQuery.of(context).size.width/50,
                          left: MediaQuery.of(context).size.width/35,
                          right: MediaQuery.of(context).size.width/35,),
                        child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                            color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width/35,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffFFC100),),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/50,
                          bottom: MediaQuery.of(context).size.width/50,
                          left: MediaQuery.of(context).size.width/35,
                          right: MediaQuery.of(context).size.width/35,),
                        child: Center(child: Text("English",style: GoogleFonts.poppins(
                          color: Color(0xffFFC100),
                          fontSize: MediaQuery.of(context).size.width/35,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFC100),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/50,
                          bottom: MediaQuery.of(context).size.width/50,
                          left: MediaQuery.of(context).size.width/35,
                          right: MediaQuery.of(context).size.width/35,),
                        child: Center(child: Text("Science",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width/35,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFC100),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/50,
                          bottom: MediaQuery.of(context).size.width/50,
                          left: MediaQuery.of(context).size.width/35,
                          right: MediaQuery.of(context).size.width/35,),
                        child: Center(child: Text("Geometry",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width/35,
                        ),)),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:10, left: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFC100),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/50,
                          bottom: MediaQuery.of(context).size.width/50,
                          left: MediaQuery.of(context).size.width/35,
                          right: MediaQuery.of(context).size.width/35,),
                        child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width/35,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFC100),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/50,
                          bottom: MediaQuery.of(context).size.width/50,
                          left: MediaQuery.of(context).size.width/35,
                          right: MediaQuery.of(context).size.width/35,),
                        child: Center(child: Text("Mathematics",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 11,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFC100),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/50,
                          bottom: MediaQuery.of(context).size.width/50,
                          left: MediaQuery.of(context).size.width/35,
                          right: MediaQuery.of(context).size.width/35,),
                        child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width/35,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFC100),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/50,
                          bottom: MediaQuery.of(context).size.width/50,
                          left: MediaQuery.of(context).size.width/35,
                          right: MediaQuery.of(context).size.width/35,),
                        child: Center(child: Text("Mathematics",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width/35,
                        ),)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10, left: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFC100),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/50,
                          bottom: MediaQuery.of(context).size.width/50,
                          left: MediaQuery.of(context).size.width/35,
                          right: MediaQuery.of(context).size.width/35,),
                        child: Center(child: Text("Biology",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width/35,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffFFC100),),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/50,
                          bottom: MediaQuery.of(context).size.width/50,
                          left: MediaQuery.of(context).size.width/35,
                          right: MediaQuery.of(context).size.width/35,),
                        child: Center(child: Text("English",style: GoogleFonts.poppins(
                          color: Color(0xffFFC100),
                          fontSize: MediaQuery.of(context).size.width/35,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFC100),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/50,
                          bottom: MediaQuery.of(context).size.width/50,
                          left: MediaQuery.of(context).size.width/35,
                          right: MediaQuery.of(context).size.width/35,),
                        child: Center(child: Text("Science",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width/35,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFC100),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/50,
                          bottom: MediaQuery.of(context).size.width/50,
                          left: MediaQuery.of(context).size.width/35,
                          right: MediaQuery.of(context).size.width/35,),
                        child: Center(child: Text("Geometry",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width/35,
                        ),)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // available tutor haiding
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
              child: Text("Subject",style: GoogleFonts.poppins(
                color: Color(0xff213E50),
                fontWeight: FontWeight.w600,
                fontSize: 14,


              )),
            ),
            // availabilility days
            Padding(
              padding: const EdgeInsets.only(top:10, left: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFCD32),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/25,
                          bottom: MediaQuery.of(context).size.width/25,
                          left: MediaQuery.of(context).size.width/15,
                          right: MediaQuery.of(context).size.width/15,),
                        child: Center(child: Text("Mon",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width/30,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEEF6F8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/25,
                          bottom: MediaQuery.of(context).size.width/25,
                          left: MediaQuery.of(context).size.width/15,
                          right: MediaQuery.of(context).size.width/15,),
                        child: Center(child: Text("Tue",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width/30,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFCD32),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/25,
                          bottom: MediaQuery.of(context).size.width/25,
                          left: MediaQuery.of(context).size.width/15,
                          right: MediaQuery.of(context).size.width/15,),
                        child: Center(child: Text("Wed",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width/30,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEEF6F8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/25,
                          bottom: MediaQuery.of(context).size.width/25,
                          left: MediaQuery.of(context).size.width/15,
                          right: MediaQuery.of(context).size.width/15,),
                        child: Center(child: Text("Thu",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width/30,
                        ),)),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10, left: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEEF6F8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/25,
                          bottom: MediaQuery.of(context).size.width/25,
                          left: MediaQuery.of(context).size.width/12,
                          right: MediaQuery.of(context).size.width/12,),
                        child: Center(child: Text("Fri",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width/30,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/28,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFCD32),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/25,
                          bottom: MediaQuery.of(context).size.width/25,
                          left: MediaQuery.of(context).size.width/15,
                          right: MediaQuery.of(context).size.width/15,),
                        child: Center(child: Text("Sat",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width/30,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/28,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEEF6F8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/25,
                          bottom: MediaQuery.of(context).size.width/25,
                          left: MediaQuery.of(context).size.width/13,
                          right: MediaQuery.of(context).size.width/15,),
                        child: Center(child: Text("Sun",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width/30,
                        ),)),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            // Teaching Format haiding
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
              child: Text("Teaching Format",style: GoogleFonts.poppins(
                color: Color(0xff213E50),
                fontWeight: FontWeight.w600,
                fontSize: MediaQuery.of(context).size.width/27,


              )),
            ),
            // visits
            Padding(
              padding: const EdgeInsets.only(top:10, left: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFCD32),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/25,
                          bottom: MediaQuery.of(context).size.width/25,
                          left: MediaQuery.of(context).size.width/10.5,
                          right: MediaQuery.of(context).size.width/10.5,),
                        child: Center(child: Text("Visit home",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width/30,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEEF6F8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/25,
                          bottom: MediaQuery.of(context).size.width/25,
                          left: MediaQuery.of(context).size.width/10.5,
                          right: MediaQuery.of(context).size.width/10.5,),
                        child: Center(child: Text("Student visit",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width/30,
                        ),)),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10, left: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFCD32),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/25,
                          bottom: MediaQuery.of(context).size.width/25,
                          left: MediaQuery.of(context).size.width/12,
                          right: MediaQuery.of(context).size.width/12,),
                        child: Center(child: Text("Group class",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width/30,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEEF6F8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/25,
                          bottom: MediaQuery.of(context).size.width/25,
                          left: MediaQuery.of(context).size.width/10.5,
                          right: MediaQuery.of(context).size.width/10.5,),
                        child: Center(child: Text("Online class",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width/30,
                        ),)),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            // Price haiding
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
              child: Text("Price",style: GoogleFonts.poppins(
                color: Color(0xff213E50),
                fontWeight: FontWeight.w600,
                fontSize: MediaQuery.of(context).size.width/27,


              )),
            ),
            // Price bar
            RangeSlider(
              values: selectedRange,
              onChanged: (RangeValues newRange) {
                setState(() {
                  selectedRange = newRange;
                });
              },
              activeColor: Color(0xffFFCD32),
              inactiveColor: Color(0xffFBF1D7),
            ),
            // Levels haiding
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
              child: Text("Levels",style: GoogleFonts.poppins(
                color: Color(0xff213E50),
                fontWeight: FontWeight.w600,
                fontSize: MediaQuery.of(context).size.width/27,


              )),
            ),
            // School,University,college buttons
            Padding(
              padding: const EdgeInsets.only(top:10, left: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFCD32),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/25,
                          bottom: MediaQuery.of(context).size.width/25,
                          left: MediaQuery.of(context).size.width/10.5,
                          right: MediaQuery.of(context).size.width/10.5,),
                        child: Center(child: Text("School students",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width/30,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEEF6F8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/25,
                          bottom: MediaQuery.of(context).size.width/25,
                          left: MediaQuery.of(context).size.width/10.5,
                          right: MediaQuery.of(context).size.width/10.5,),
                        child: Center(child: Text("University",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),)),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10, left: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEEF6F8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/25,
                          bottom: MediaQuery.of(context).size.width/25,
                          left: MediaQuery.of(context).size.width/10.5,
                          right: MediaQuery.of(context).size.width/10.5,),
                        child: Center(child: Text("High School",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width/30,
                        ),)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/30,
                    ),
                    //extra container
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width/25,
                          bottom: MediaQuery.of(context).size.width/25,
                          left: MediaQuery.of(context).size.width/10.5,
                          right: MediaQuery.of(context).size.width/10.5,),
                        child: Center(child: Text("University",style: GoogleFonts.poppins(
                          color: Colors.transparent,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width/30,
                        ),)),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12,right: 12,top: 20,bottom: MediaQuery.of(context).size.height/15),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>pmbottom()));
                },
                child: Container(
                  width:MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xffFFCD32),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("Apply",style: GoogleFonts.almarai(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width/25,
                      fontWeight: FontWeight.w600,
                  ),),

                  ),
                ),

              ),
            ),


          ],
        ),
      ),
    );
  }
}
