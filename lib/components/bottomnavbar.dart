// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/colorconstnats.dart';
import 'package:flutter_application_1/screens/CartScreen/cart_page.dart';
import 'package:flutter_application_1/screens/HomeScreen/homescreen.dart';
import 'package:flutter_application_1/screens/OrderHistoryListScreen/order_history_list.dart';
import 'package:flutter_application_1/screens/ProfileScreen/profile_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({
    super.key,
    required this.i,
  });
  final int i;
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  late int selectIndex;

  @override
  void initState() {
    super.initState();
    selectIndex = widget.i; // Initialize selectIndex with the value of i
  }

  void change(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  final List<Widget> pages = [
    HomeScreen(),
    OrderHistoryListSccreen(),
    MyCart(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
        onTap: change,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2,
            ),
            label: 'Profile',
          ),
        ],
        selectedItemColor: ured,
        unselectedItemColor: ugrey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          color: ured,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          color: ugrey,
          fontWeight: FontWeight.normal,
        ),
      ),
      body: pages[selectIndex],
    );
  }
}
