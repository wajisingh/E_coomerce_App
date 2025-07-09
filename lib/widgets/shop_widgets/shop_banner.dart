// lib/widgets/shop_widgets/shop_banner.dart
import 'package:flutter/material.dart';

class ShopBanner extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;

  const ShopBanner({
    super.key,
    required this.imagePath,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: width,
      height: height,
    );
  }
}
