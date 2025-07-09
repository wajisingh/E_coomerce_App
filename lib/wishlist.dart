import 'package:e_commerce/widgets/home_wishlist_widgets/home_header.dart';
import 'package:e_commerce/widgets/home_wishlist_widgets/home_search_bar.dart';
import 'package:e_commerce/widgets/home_wishlist_widgets/wishlist_grid.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 10),
            HomeHeader(),
            SizedBox(height: 20),
            HomeSearchBar(),
            SizedBox(height: 20),
            WishlistGrid(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
