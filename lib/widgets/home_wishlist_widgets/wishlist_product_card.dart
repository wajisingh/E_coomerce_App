import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final double imgHeight;
  final String name;
  final String description;
  final String price;

  const ProductCard({
    super.key,
    required this.image,
    required this.imgHeight,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              image,
              height: imgHeight,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 2),
                Text(description, style: const TextStyle(fontSize: 10, color: Colors.grey)),
                const SizedBox(height: 5),
                Text(price, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                const SizedBox(height: 1),
                Row(
                  children: const [
                    Icon(Icons.star, color: Colors.amber, size: 12),
                    Icon(Icons.star, color: Colors.amber, size: 12),
                    Icon(Icons.star, color: Colors.amber, size: 12),
                    Icon(Icons.star_half, color: Colors.amber, size: 12),
                    Icon(Icons.star_border, color: Colors.amber, size: 12),
                    SizedBox(width: 4),
                    Text("56890", style: TextStyle(color: Colors.grey, fontSize: 10)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
