import 'package:flutter/material.dart';
import 'package:e_commerce/widgets/home_wishlist_widgets/home_arrivals.dart';
import 'package:e_commerce/widgets/home_wishlist_widgets/home_banner.dart';
import 'package:e_commerce/widgets/home_wishlist_widgets/home_categories.dart';
import 'package:e_commerce/widgets/home_wishlist_widgets/home_discount_strips.dart';
import 'package:e_commerce/widgets/home_wishlist_widgets/home_featured_products.dart';
import 'package:e_commerce/widgets/home_wishlist_widgets/home_header.dart';
import 'package:e_commerce/widgets/home_wishlist_widgets/home_search_bar.dart';
import 'package:e_commerce/widgets/home_wishlist_widgets/home_sponsored.dart';
import 'package:e_commerce/widgets/home_wishlist_widgets/home_watch_list.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 10),
            HomeHeader(),
            SizedBox(height: 25),
            HomeSearchBar(),
            HomeCategories(),
            HomeBanners(),
            HomeFeaturedProducts(),
            HomeDiscountStrip(),
            HomeWatchList(),
            HomeArrivals(),
            HomeSponsored(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
