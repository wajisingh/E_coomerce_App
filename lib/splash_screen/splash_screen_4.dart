import 'dart:async';
import 'package:e_commerce/login_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen4 extends StatefulWidget {
  const SplashScreen4({super.key});

  @override
  State<SplashScreen4> createState() => _SplashScreen4State();
}

class _SplashScreen4State extends State<SplashScreen4> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
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
                "assets/img/4.png", // Make sure this image exists
                width: 300,
                height: 300,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Get Your Order",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Get your order means receiving the product you purchased.",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
