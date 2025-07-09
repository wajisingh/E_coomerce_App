import 'package:flutter/material.dart';

class ShopSimilarTitle extends StatelessWidget {
  const ShopSimilarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          "Similar to",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
