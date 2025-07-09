// lib/widgets/shop_widgets/shop_title_text.dart
import 'package:flutter/material.dart';

class ShopTitleText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  const ShopTitleText({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
        ),
      ],
    );
  }
}
