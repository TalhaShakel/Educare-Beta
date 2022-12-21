import 'package:educare/Home/Dashboard.dart';
import 'package:educare/SignUp/SignUp.dart';
import 'package:educare/SplashScreen/splashscreen.dart';
import 'package:educare/Tutor/tutorformat.dart';
import 'package:educare/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Mainscreen());
}

class Mainscreen extends StatelessWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            theme: ThemeData(
              primaryColor: Colors.black,
            ),
            debugShowCheckedModeBanner: false,

            home: splashscreen(),
            builder: EasyLoading.init(),
            // home: pmbottom(),
          );
        });
  }
}
