import 'package:flutter/material.dart';
import 'home_screen.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildMainProductImage(),
              _buildSectionLabel("Size: 7UK"),
              const SizedBox(height: 10),
              _buildImage("assets/img/size.png", width: 288, height: 32),
              const SizedBox(height: 10),
              _buildSectionLabel("Nike Sneaker"),
              const SizedBox(height: 5),
              _buildSectionLabel("Vision Alta Men’s Shoes Size (All Colours)", fontWeight: FontWeight.w400),
              _buildImage("assets/img/description.png", width: 343, height: 198),
              const SizedBox(height: 10),
              _buildCartButtons(),
              const SizedBox(height: 10),
              _buildDeliveryNotice(),
              const SizedBox(height: 10),
              _buildImage("assets/img/design.png", width: 340, height: 48),
              const SizedBox(height: 10),
              _buildSectionLabel("Similar to", fontSize: 18),
              _buildImage("assets/img/item.png", width: 340, height: 60),
              const SizedBox(height: 10),
              _buildSimilarProductRow(),
            ],
          ),
        ),
      ),
    );
  }

  /// AppBar with back and cart icons
  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      actions: [
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ),
      ],
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const HomeScreen()),
          );
        },
      ),
    );
  }

  /// Main product image
  Widget _buildMainProductImage() {
    return SizedBox(
      width: 339,
      height: 235,
      child: Center(child: Image.asset("assets/img/shoes3.png")),
    );
  }

  /// Reusable text row
  Widget _buildSectionLabel(String text, {double fontSize = 14, FontWeight fontWeight = FontWeight.w600}) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: fontSize, fontWeight: fontWeight)),
      ],
    );
  }

  /// Reusable image
  Widget _buildImage(String path, {double? width, double? height}) {
    return Row(
      children: [
        Image.asset(path, width: width, height: height),
      ],
    );
  }

  /// Add to cart and buy buttons
  Widget _buildCartButtons() {
    return Row(
      children: [
        Image.asset("assets/img/cartlogo.png", width: 136, height: 40),
        const SizedBox(width: 20),
        Image.asset("assets/img/buy_logo.png", width: 136, height: 40),
      ],
    );
  }

  /// Delivery notice
  Widget _buildDeliveryNotice() {
    return Container(
      width: 350,
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xffFFCCD5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          "Delivery with in 1 Hour",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  /// Two side-by-side product suggestions
  Widget _buildSimilarProductRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildProductCard("assets/img/nike1.png", "Nike Air Max"),
        _buildProductCard("assets/img/nike2.png", "Nike Air Jordan"),
      ],
    );
  }

  /// Product Card (reusable)
  Widget _buildProductCard(String imagePath, String title) {
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
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(imagePath, width: 164, height: 136, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 2),
                const Text("Neque porro quisquam est qui dolorem ipsum quia",
                    style: TextStyle(fontSize: 10, color: Colors.grey)),
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
