import 'package:flutter/material.dart';

class ShopProductCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const ShopProductCard({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 245,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              imagePath,
              width: 164,
              height: 136,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 2),
                const Text(
                  "Neque porro quisquam est qui dolorem ipsum quia",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
                const SizedBox(height: 5),
                const Text("₹1500", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
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
