import 'dart:async';
import 'package:flutter/material.dart';
import 'splash_screen_3.dart'; // Import the next screen

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SplashScreen3()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/img/2.png",
                width: 300,
                height: 300,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Choose Product",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Choose Product means selecting an item you want to view or buy from a list.",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
