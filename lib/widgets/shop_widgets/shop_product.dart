import 'package:e_commerce/widgets/shop_widgets/product_card.dart';
import 'package:flutter/material.dart';


class ShopSimilarProductsRow extends StatelessWidget {
  const ShopSimilarProductsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        ShopProductCard(
          imagePath: "assets/img/nike1.png",
          title: "Nike Air Max",
        ),
        ShopProductCard(
          imagePath: "assets/img/nike2.png",
          title: "Nike Air Jordan",
        ),
      ],
    );
  }
}
