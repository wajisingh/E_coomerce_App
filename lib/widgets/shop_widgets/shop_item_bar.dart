import 'package:flutter/material.dart';

class ShopItemBar extends StatelessWidget {
  const ShopItemBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/img/item.png",
      width: 338,
      height: 24,
      fit: BoxFit.cover,
    );
  }
}
