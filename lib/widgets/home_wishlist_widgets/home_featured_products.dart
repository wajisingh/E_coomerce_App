import 'package:flutter/material.dart';

class HomeFeaturedProducts extends StatelessWidget {
  const HomeFeaturedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildCard() {
      return Container(
        width: 164,
        height: 305,
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
              borderRadius:
              const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset("assets/img/men_shirt.png",
                  width: 164, height: 196, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Men Printed Shirt",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(height: 2),
                  Text("Neque porro quisquam est qui dolorem ipsum quia",
                      style: TextStyle(fontSize: 10, color: Colors.grey)),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text("₹1500",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 1),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 12),
                      Icon(Icons.star, color: Colors.amber, size: 12),
                      Icon(Icons.star, color: Colors.amber, size: 12),
                      Icon(Icons.star_half, color: Colors.amber, size: 12),
                      Icon(Icons.star_border, color: Colors.amber, size: 12),
                      SizedBox(width: 4),
                      Text("56890",
                          style: TextStyle(color: Colors.grey, fontSize: 10)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [buildCard(), buildCard()],
      ),
    );
  }
}
