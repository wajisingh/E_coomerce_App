// lib/widgets/shop_widgets/shop_cart_buttons.dart
import 'package:flutter/material.dart';

class ShopCartButtons extends StatelessWidget {
  const ShopCartButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/img/cartlogo.png", width: 136, height: 40),
        const SizedBox(width: 20),
        Image.asset("assets/img/buy_logo.png", width: 136, height: 40),
      ],
    );
  }
}
