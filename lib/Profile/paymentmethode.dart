import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class paymentmethode extends StatefulWidget {
  const paymentmethode({Key? key}) : super(key: key);

  @override
  State<paymentmethode> createState() => _paymentmethodeState();
}

class _paymentmethodeState extends State<paymentmethode> {
  @override
  Widget build(BuildContext context) {
    bool check = false;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Payment Method",style: GoogleFonts.poppins(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: MediaQuery.of(context).size.width/20,
        )),
        leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Padding(
               padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/20,right: MediaQuery.of(context).size.width/100,),
               child: Image.asset("assets/images/img_25.png", width: MediaQuery.of(context).size.width/1.05,),
             ) ,
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text("Card Number",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width/23,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30,left: 30,top: 10),
                child: Container(
                  child: TextFormField(
                      decoration:InputDecoration(
                        hintText: "xxxxxxxxxxxxxxxx",
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 0.5,
                          ),
                        ),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 10),
                child: Text("Card Holder Name",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width/23,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30,left: 30,top: 10),
                child: Container(
                  child: TextFormField(
                      decoration:InputDecoration(
                        hintText: "Ahsan Ali",
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 0.5,
                          ),
                        ),
                      )
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30,top: 10),
                        child: Text("CVV",style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width/23,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10,left: 30,top: 10),
                        child: Container(
                          width: 150,

                          child: TextFormField(
                            decoration:InputDecoration(
                                hintText: "887",
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("Expire",style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width/23,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: 150,
                          child: TextFormField(
                              decoration:InputDecoration(
                                hintText: "2/25",
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 0.5,
                                  ),
                                ),
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Theme(
                    data:ThemeData(unselectedWidgetColor: Color(0xffFFCD32)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Checkbox(value: check, onChanged:(chekvalueww){
                        setState(() {
                          check = chekvalueww!;
                        });
                      },

                      ),
                    ),
                  ),
                  Text("Use this as default card for payment",style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width/28,
                  )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 20,top: 20,bottom: 50),
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
                    child: Center(child: Text("Add to card",style: GoogleFonts.almarai(
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
