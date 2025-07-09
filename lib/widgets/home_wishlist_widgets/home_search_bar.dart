import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
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
}
