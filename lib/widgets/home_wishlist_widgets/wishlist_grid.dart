import 'package:e_commerce/widgets/home_wishlist_widgets/wishlist_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class WishlistGrid extends StatelessWidget {
  const WishlistGrid({super.key});

  final List<Map<String, dynamic>> products = const [
    {
      "image": "assets/img/hody.png",
      "imgHeight": 136.0,
      "name": "Hoodie Special",
      "description": "Cozy and stylish hoodie for men.",
      "price": "₹1200",
    },
    {
      "image": "assets/img/men_shirt.png",
      "imgHeight": 196.0,
      "name": "Casual Shirt",
      "description": "Perfect for office and evening wear.",
      "price": "₹1500",
    },
    {
      "image": "assets/img/dress4.png",
      "imgHeight": 196.0,
      "name": "Summer Dress",
      "description": "Lightweight floral summer dress.",
      "price": "₹1350",
    },
    {
      "image": "assets/img/dress3.png",
      "imgHeight": 136.0,
      "name": "Formal Dress",
      "description": "Elegant formal evening gown.",
      "price": "₹1999",
    },
    {
      "image": "assets/img/dress4.png",
      "imgHeight": 196.0,
      "name": "Summer Dress",
      "description": "Lightweight floral summer dress.",
      "price": "₹1350",
    },
    {
      "image": "assets/img/dress3.png",
      "imgHeight": 136.0,
      "name": "Formal Dress",
      "description": "Elegant formal evening gown.",
      "price": "₹1999",
    },
    {
      "image": "assets/img/dress4.png",
      "imgHeight": 196.0,
      "name": "Summer Dress",
      "description": "Lightweight floral summer dress.",
      "price": "₹1350",
    },
    {
      "image": "assets/img/dress3.png",
      "imgHeight": 136.0,
      "name": "Formal Dress",
      "description": "Elegant formal evening gown.",
      "price": "₹1999",
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final p = products[index];
          return ProductCard(
            image: p['image'],
            imgHeight: p['imgHeight'],
            name: p['name'],
            description: p['description'],
            price: p['price'],
          );
        },
      ),
    );
  }
}
