import 'package:flutter/material.dart';
import 'dart:async';
import 'splash_screen_2.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SplashScreen2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
          child:Image.asset("assets/img/logo.png",width: 275,
              height: 100,

          ) ),
    );
  }
}
