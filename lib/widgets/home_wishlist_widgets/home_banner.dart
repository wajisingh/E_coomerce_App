import 'package:flutter/material.dart';

class HomeBanners extends StatelessWidget {
  const HomeBanners({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/img/discount.png", width: 343, height: 220),
        const SizedBox(height: 10),
        Image.asset("assets/img/discount1.png", width: 343, height: 60),
        const SizedBox(height: 10),
      ],
    );
  }
}
