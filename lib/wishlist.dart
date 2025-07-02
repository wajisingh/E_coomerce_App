import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> products = [
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
        "image": "assets/img/dress2.png",
        "imgHeight": 136.0,
        "name": "Formal Dress",
        "description": "Elegant formal evening gown.",
        "price": "₹1999",
      },
      {
        "image": "assets/img/dress1.png",
        "imgHeight": 196.0,
        "name": "Formal Dress",
        "description": "Elegant formal evening gown.",
        "price": "₹1999",
      },
      {
        "image": "assets/img/shoes1.png",
        "imgHeight": 196.0,
        "name": "Formal Dress",
        "description": "Elegant formal evening gown.",
        "price": "₹1999",
      },
      {
        "image": "assets/img/phone.png",
        "imgHeight": 136.0,
        "name": "Mobile Phone",
        "description": "Elegant formal evening gown.",
        "price": "₹1999",
      },
      {
        "image": "assets/img/jacket.png",
        "imgHeight": 196.0,
        "name": "Formal Dress",
        "description": "Elegant formal evening gown.",
        "price": "₹1999",
      },
      {
        "image": "assets/img/ps4.png",
        "imgHeight": 136.0,
        "name": "Formal Dress",
        "description": "Elegant formal evening gown.",
        "price": "₹1999",
      },
      {
        "image": "assets/img/camera.png",
        "imgHeight": 196.0,
        "name": "Formal Dress",
        "description": "Elegant formal evening gown.",
        "price": "₹1999",
      },
      {
        "image": "assets/img/shoes.png",
        "imgHeight": 136.0,
        "name": "Formal Dress",
        "description": "Elegant formal evening gown.",
        "price": "₹1999",
      },
    ];


    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/img/logo2.png", width: 50, height: 50),
                  Image.asset("assets/img/logo.png", width: 112, height: 32),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/img/profile.png'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.mic),
                  labelText: "Search any Product",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "All Product",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
              const SizedBox(height: 10),
              MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                shrinkWrap: true,
                physics:NeverScrollableScrollPhysics(),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(color: Colors.black12, blurRadius:2),
                      ],
                    ),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.asset(
                          product['image'],
                          height: product['imgHeight'],
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(product['name'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            SizedBox(height: 2),
                            Text(product['description'], style: TextStyle(fontSize: 10, color: Colors.grey)),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(product['price'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                              ],
                            ),
                            SizedBox(height: 1),
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
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
