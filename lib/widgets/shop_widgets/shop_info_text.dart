// lib/widgets/shop_widgets/shop_info_text.dart
import 'package:flutter/material.dart';

class ShopInfoText extends StatelessWidget {
  final String label;
  final double fontSize;
  final FontWeight fontWeight;

  const ShopInfoText({
    super.key,
    required this.label,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ],
    );
  }
}
