import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  final List<Map<String, String>> _categories = const [
    {"icon": "assets/img/beauty.png", "label": "Beauty"},
    {"icon": "assets/img/fashion.png", "label": "Fashion"},
    {"icon": "assets/img/kids.png", "label": "Kids"},
    {"icon": "assets/img/women.png", "label": "Womens"},
    {"icon": "assets/img/men.png", "label": "Mens"},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: _categories.map((category) {
              return Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(category["icon"]!),
                    ),
                    const SizedBox(height: 4),
                    Text(category["label"]!),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
