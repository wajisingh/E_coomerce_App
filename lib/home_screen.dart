import 'package:e_commerce/home_page_content_screen.dart';
import 'package:e_commerce/search.dart';
import 'package:e_commerce/setting.dart';
import 'package:e_commerce/shop.dart';
import 'package:e_commerce/wishlist.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePageContent(),
    const Wishlist(),
    const Shop(),
    const Search(),
    const Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: SizedBox(
          width: 414,
          height: 92,
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedLabelStyle: const TextStyle(color: Colors.red),
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            items: [
              BottomNavigationBarItem(
                icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 0 ? Colors.red : Colors.black,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset("assets/img/home_icon.png", width: 23, height: 24),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 1 ? Colors.red : Colors.black,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset("assets/img/wishlist_icon.png", width: 23, height: 24),
                ),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: Transform.translate(
                  offset: Offset(0, -14),
                  child: Container(
                    width: 54,
                    height: 56,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x29000000), // #00000017
                          offset: Offset(0, 2),
                          blurRadius: 14,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          _selectedIndex == 2 ? Colors.red : Colors.black,
                          BlendMode.srcIn,
                        ),
                        child: Image.asset(
                          "assets/img/shop_icon.png",
                          width: 26,
                          height: 26,
                        ),
                      ),
                    ),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 3 ? Colors.red : Colors.black,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset("assets/img/search_icon.png", width: 23, height: 24),
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 4 ? Colors.red : Colors.black,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset("assets/img/setting_icon.png", width: 23, height: 24),
                ),
                label: 'Setting',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
