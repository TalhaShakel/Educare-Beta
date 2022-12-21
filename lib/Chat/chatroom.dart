import 'package:flutter/material.dart';
class chatroom extends StatefulWidget {
  const chatroom({Key? key}) : super(key: key);

  @override
  State<chatroom> createState() => _chatroomState();
}

class _chatroomState extends State<chatroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: TextFormField(
                  decoration:InputDecoration(
                    hintText: "Type Here",
                    prefixIcon: Icon(Icons.chat),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xffE3E5E5),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xffE3E5E5),
                        width: 1,
                      ),
                    ),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
