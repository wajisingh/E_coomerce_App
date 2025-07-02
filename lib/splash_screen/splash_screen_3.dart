import 'dart:async';
import 'package:flutter/material.dart';
import 'splash_screen_4.dart'; // next screen

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({super.key});

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SplashScreen4()),
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
                "assets/img/3.png", // Make sure this image exists
                width: 300,
                height: 300,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Make Payment",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Payment is the process of sending money to buy products or services.",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
