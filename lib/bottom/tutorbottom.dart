
import 'package:educare/Home/Dashboard.dart';
import 'package:educare/Profile/profile.dart';
import 'package:educare/Search/search.dart';
import 'package:flutter/material.dart';

import '../Chat/chart.dart';
import '../Favourite/favourite.dart';
import '../Home/TutorDashboard.dart';

class ttbottom extends StatefulWidget {
  const ttbottom({Key? key}) : super(key: key);

  @override
  State<ttbottom> createState() => _ttbottomState();
}

class _ttbottomState extends State<ttbottom> {
  int currentno = 0;
  List allpages = [
    tutordashboard(),
    searchh(),
    chart(),
    favourite(),
    profile()

  ];
  @override
  Widget build(BuildContext context) {
    int selectedindex =0;

    return Scaffold(
      body: allpages[currentno],
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Fixed
        backgroundColor: Colors.white, // <--
        fixedColor: Color(0xffFFCD32),
        showUnselectedLabels: true,


        selectedLabelStyle: TextStyle(color: Colors.red),
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search,),
            label: 'Search',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.chat,),
            label: 'Chat',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline,),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
              label: 'Profile'
          )
        ],

        //
        onTap: (index){
          setState(() {
            currentno = index;
          });
        },
        currentIndex: currentno,
      ),
    );
  }
}
