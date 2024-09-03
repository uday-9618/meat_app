// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/CartScreen/cart_page.dart';
import 'package:flutter_application_1/screens/HomeScreen/homescreen.dart';
import 'package:flutter_application_1/screens/OrderHistoryScreen/orderhistoryscreen.dart';
import 'package:flutter_application_1/screens/ProfileScreen/profile_screen.dart';

class BtmnavBar extends StatelessWidget {
  final PageController _pageController = PageController();
  final ValueNotifier<int> _selectedIndexNotifier = ValueNotifier<int>(0);

  BtmnavBar({super.key});

  void _onItemTapped(int index) {
    _selectedIndexNotifier.value = index;
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: _selectedIndexNotifier,
      builder: (context, selectedIndex, child) {
        return Scaffold(
          body: IndexedStack(
            index: selectedIndex,
            children: <Widget>[
              HomeScreen(),
              OrderHistoryScreen(), // History now includes tabs
              MyCart(),
              ProfileScreen(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: selectedIndex,
            onTap: _onItemTapped,
          ),
        );
      },
    );
  }
}
