// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../models/burger.dart';

class BurgerTile extends StatelessWidget {
  final Widget icon;
  final Burger burger;
  void Function()? onPressed;

  BurgerTile(
      {super.key,
      required this.burger,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
          title: Text(burger.name),
          subtitle: Text(burger.price),
          leading: Image.asset(burger.imagePath),
          trailing: IconButton(onPressed: onPressed, icon: icon)),
    );
  }
}
