// lib/widgets/shop_widgets/shop_product_image.dart
import 'package:flutter/material.dart';

class ShopProductImage extends StatelessWidget {
  const ShopProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 339,
      height: 235,
      child: Image.asset("assets/img/shoes3.png"),
    );
  }
}
