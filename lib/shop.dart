import 'package:e_commerce/widgets/home_wishlist_widgets/home_featured_products.dart';
import 'package:e_commerce/widgets/shop_widgets/shop_appbar.dart';
import 'package:e_commerce/widgets/shop_widgets/shop_assets.dart';
import 'package:e_commerce/widgets/shop_widgets/shop_cart_button.dart';
import 'package:e_commerce/widgets/shop_widgets/shop_delivery.dart';
import 'package:e_commerce/widgets/shop_widgets/shop_info_text.dart';
import 'package:e_commerce/widgets/shop_widgets/shop_item_bar.dart';
import 'package:e_commerce/widgets/shop_widgets/shop_product.dart';
import 'package:e_commerce/widgets/shop_widgets/shop_product_image.dart';
import 'package:e_commerce/widgets/shop_widgets/shop_text.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ShopAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            ShopProductImage(),
            ShopInfoText(label: "Size: 7UK"),
            SizedBox(height: 10),
            ShopImageAsset(path: "assets/img/size.png", width: 288, height: 32),
            SizedBox(height: 10),
            ShopInfoText(label: "Nike Sneaker"),
            SizedBox(height: 5),
            ShopInfoText(
              label: "Vision Alta Men’s Shoes Size (All Colours)",
              fontWeight: FontWeight.w400,
            ),
            ShopImageAsset(path: "assets/img/description.png", width: 343, height: 198),
            SizedBox(height: 10),
            ShopCartButtons(),
            SizedBox(height: 10),
            ShopDeliveryNotice(),
            SizedBox(height: 10),
            ShopImageAsset(path: "assets/img/design.png", width: 340, height: 48),
            SizedBox(height: 10),
            ShopSimilarTitle(),
            SizedBox(height: 10),
            ShopItemBar(),
            SizedBox(height: 10),
            ShopSimilarProductsRow(),
          ],
        ),
      ),
    );
  }
}
