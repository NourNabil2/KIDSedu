import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/Home_Screen.dart';
import 'Screens/Log.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: EasySplashScreen(
          backgroundColor: Color.fromARGB(240, 62, 35, 76),
          title: Text('A variety of letters with sound, \n '
              '                           Let your children learn with thier ears and eyes', style: TextStyle(fontSize: 10 ,color: Colors.orangeAccent , fontWeight: FontWeight.bold),),
          logo: Image(image: AssetImage('images/Logo.png')),
          logoWidth: 190,
          showLoader: true,
          loadingText: Text('Loding' ,style: TextStyle(fontWeight: FontWeight.bold , color: Colors.orangeAccent)),
          loaderColor: Colors.orangeAccent,
          navigator: Loginscreen(),


        ),
      ),
    );

  }
}


