import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop/components/bottom_nav_bar.dart';
import 'package:flutter_sneaker_shop/pages/cart_page.dart';
import 'package:flutter_sneaker_shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  //update the selected index while taping
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //display pages
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
    //cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          )),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: const Column(
          children: [
            //logo

            //pages
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
