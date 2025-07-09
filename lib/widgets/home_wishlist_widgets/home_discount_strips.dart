import 'package:flutter/material.dart';

class HomeDiscountStrip extends StatelessWidget {
  const HomeDiscountStrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/img/offer.png", width: 343, height: 84),
        const SizedBox(height: 10),
        Image.asset("assets/img/heels.png", width: 343, height: 172),
        const SizedBox(height: 10),
        Image.asset("assets/img/discount2.png", width: 343, height: 60),
        const SizedBox(height: 10),
      ],
    );
  }
}
