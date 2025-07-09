import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
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
}
