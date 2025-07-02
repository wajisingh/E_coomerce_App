import 'package:e_commerce/splash_screen/splash_screen_1.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: SplashScreen1(),
     // home: SplashScreen2(),
     // home: SplashScreen3(),
     // home: SplashScreen4(),
      //home: HomeScreen(),
    );
  }
}
