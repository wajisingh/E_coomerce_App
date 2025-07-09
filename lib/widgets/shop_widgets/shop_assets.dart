
import 'package:flutter/material.dart';

class ShopImageAsset extends StatelessWidget {
  final String path;
  final double? width;
  final double? height;

  const ShopImageAsset({
    super.key,
    required this.path,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: width,
      height: height,
    );
  }
}
