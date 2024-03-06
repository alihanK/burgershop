// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      child: GNav(
          onTabChange: (value) => onTabChange!(value),
          backgroundColor: Colors.orange,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          activeColor: Colors.black,
          tabBackgroundColor: Colors.white,
          tabActiveBorder: Border.all(color: Colors.red),
          tabs: [
            GButton(icon: Icons.home, text: 'Shop'),
            GButton(icon: Icons.shopping_bag_outlined, text: 'CART'),
          ]),
    );
  }
}
