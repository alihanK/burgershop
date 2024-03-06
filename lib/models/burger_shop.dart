import 'package:flutter/material.dart';

import 'burger.dart';

class BurgerShop extends ChangeNotifier {
  //Burger for sale list
  final List<Burger> _shop = [
    //cheese burger
    Burger(
        name: "NO-SALAD Burger",
        price: "5.99",
        imagePath: "lib/images/nosaladburger.png"),
    //MEAT BURGER
    Burger(
        name: "Meat Burger",
        price: "4.99",
        imagePath: "lib/images/meatburger.png"),
    //mixing burger
    Burger(
        name: "Mixing BURGER",
        price: "6.99",
        imagePath: "lib/images/mixingburger.png"),
    //cheese BURGER
    Burger(
        name: "CHEESE BURGER",
        price: "7.99",
        imagePath: "lib/images/cheeseburger.png"),
    //menu BURGER
    Burger(
        name: "BURGER MENU",
        price: "10.99",
        imagePath: "lib/images/menuburger.png"),
    //MEGA BURGER
    Burger(
        name: "MEGA BURGER",
        price: "12.99",
        imagePath: "lib/images/megaburger.png"),
    //VEGAN BURGER
    Burger(
        name: "VEGAN BURGER",
        price: "4.99",
        imagePath: "lib/images/veganburger.png"),
    //CHICKEN BURGER
    Burger(
        name: "CHICKEN BURGER",
        price: "8.99",
        imagePath: "lib/images/chickenburger.png"),
    //SPECIAL BURGER
    Burger(
        name: "SPECIAL BURGER",
        price: "14.99",
        imagePath: "lib/images/specialburger.png"),
    //MEGA BURGER MENU
    Burger(
        name: "MEGA BURGER MENU",
        price: "20.99",
        imagePath: "lib/images/megamenuburger.png")
  ];

  //user cart
  List<Burger> _userCart = [];

  //get burger list
  List<Burger> get burgerShop => _shop;

  //get user cart
  List<Burger> get userCart => _userCart;

  //add item to cart
  void addItemtoCart(Burger burger) {
    _userCart.add(burger);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Burger burger) {
    _userCart.remove(burger);
    notifyListeners();
  }
}
