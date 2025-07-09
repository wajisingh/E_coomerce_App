import 'package:flutter/material.dart';
import '../../home_screen.dart';

class ShopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ShopAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const HomeScreen()),
          );
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
          onPressed: () {},
        ),
      ],
    );
  }
}
