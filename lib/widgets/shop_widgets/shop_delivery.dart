// lib/widgets/shop_widgets/shop_delivery_notice.dart
import 'package:flutter/material.dart';

class ShopDeliveryNotice extends StatelessWidget {
  const ShopDeliveryNotice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xffFFCCD5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          "Delivery within 1 Hour",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
