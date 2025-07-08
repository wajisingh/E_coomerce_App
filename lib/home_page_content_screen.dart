import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            _buildHeader(),
            const SizedBox(height: 25),
            _buildSearchBar(),
            _buildSectionTitle("All Featured"),
            _buildCategories(),
            _buildMainBanner(),
            const SizedBox(height: 10),
            _buildDiscountBanner("assets/img/discount1.png", height: 60),
            const SizedBox(height: 10),
            _buildFeaturedProducts(),
            const SizedBox(height: 10),
            _buildDiscountBanner("assets/img/offer.png", height: 84),
            const SizedBox(height: 10),
            _buildDiscountBanner("assets/img/heels.png", height: 172),
            const SizedBox(height: 20),
            _buildDiscountBanner("assets/img/discount2.png", height: 60),
            const SizedBox(height: 10),
            _buildWatchScrollList(),
            const SizedBox(height: 10),
            _buildDiscountBanner("assets/img/arival.png", height: 270),
            const SizedBox(height: 10),
            _buildDiscountBanner("assets/img/sponsored.png", height: 374),
          ],
        ),
      ),
    );
  }

  ///  Header with logo and profile image
  static Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
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
    );
  }

  /// Search bar
  static Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Icon(Icons.mic),
          labelText: "Search any Product",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  ///  Section Title
  static Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
        ],
      ),
    );
  }

  ///  Horizontal category icons
  static Widget _buildCategories() {
    final categories = [
      {'label': 'Beauty', 'img': 'assets/img/beauty.png'},
      {'label': 'Fashion', 'img': 'assets/img/fashion.png'},
      {'label': 'Kids', 'img': 'assets/img/kids.png'},
      {'label': 'Womens', 'img': 'assets/img/women.png'},
      {'label': 'Mens', 'img': 'assets/img/men.png'},
    ];

    return SizedBox(
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: categories.map((item) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                children: [
                  CircleAvatar(radius: 30, backgroundImage: AssetImage(item['img']!)),
                  const SizedBox(height: 4),
                  Text(item['label']!),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  static Widget _buildMainBanner() {
    return SizedBox(
      width: 343,
      height: 220,
      child: Image.asset("assets/img/discount.png", fit: BoxFit.cover),
    );
  }

  static Widget _buildDiscountBanner(String imagePath, {double height = 100}) {
    return SizedBox(
      width: 343,
      height: height,
      child: Image.asset(imagePath, fit: BoxFit.cover),
    );
  }

  static Widget _buildFeaturedProducts() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildProductCard("Men Printed Shirt"),
          _buildProductCard("Men Printed Shirt"),
        ],
      ),
    );
  }

  static Widget _buildProductCard(String title) {
    return Container(
      width: 164,
      height: 305,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 2)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset("assets/img/men_shirt.png", width: 164, height: 196, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Men Printed Shirt", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 2),
                Text("Neque porro quisquam est qui dolorem ipsum quia",
                    style: TextStyle(fontSize: 10, color: Colors.grey)),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text("₹1500", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                    SizedBox(width: 8),
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
                    Text("56890", style: TextStyle(color: Colors.grey, fontSize: 10)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  static Widget _buildWatchScrollList() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(4, (index) => _buildWatchCard()).expand((e) => [e, const SizedBox(width: 10)]).toList(),
        ),
      ),
    );
  }

  static Widget _buildWatchCard() {
    return Container(
      width: 142,
      height: 186,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset("assets/img/watch.png", width: 142, height: 100, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("IWC Schaffhausen 2021 Pilot's Watch SIHH 2 44mm",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                Row(
                  children: [
                    Text("₹1500", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                    SizedBox(width: 8),
                    Text("₹2499", style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey, fontSize: 10)),
                    SizedBox(width: 8),
                    Text("40%Off", style: TextStyle(color: Colors.orange, fontSize: 10)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}