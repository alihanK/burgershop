import 'package:burgershop/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'aboutus.dart';
import 'cartpage.dart';
import 'shoppage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //navigate bottom bar
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages
  final List<Widget> _pages = [
    //shop page
    ShopPage(),

    //cart page
    CartPage(),

    //about us page
    AboutUs()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'EAZYBURGER',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.person_2_outlined))
          ],
          backgroundColor: Colors.orange,
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: MyBottomNavBar(
          onTabChange: (index) => navigateBottomBar(index),
        ),
      ),
    );
  }
}
