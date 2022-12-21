import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bottom/bottom.dart';

class paymentqr extends StatefulWidget {
  const paymentqr({Key? key}) : super(key: key);

  @override
  State<paymentqr> createState() => _paymentqrState();
}

class _paymentqrState extends State<paymentqr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width / 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Ask your parent",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 15,
                  )),
              Text("Please scan this code to connect data with\nyour child",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width / 25,
                  )),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    border: Border.all(
                      color: Color(0xffFDD563),
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width / 200,
                            left: MediaQuery.of(context).size.width / 30,
                          ),
                          child: Image(
                            image: AssetImage("assets/images/parentscan.png"),
                            width: MediaQuery.of(context).size.width / 0.4,
                            height: MediaQuery.of(context).size.height / 3,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                        Text("Please scan this code\nif your child under 15",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: MediaQuery.of(context).size.width / 20,
                            )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 30,
                              right: 30,
                              top: 10,
                              bottom: MediaQuery.of(context).size.height / 15),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => pmbottom()));
                            },
                            child: Container(
                              width: 343,
                              height: 67,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFCD32),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "Connect with your Parent",
                                style: GoogleFonts.almarai(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 20,
                                ),
                              )),
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
        ),
      ),
    );
  }
}
