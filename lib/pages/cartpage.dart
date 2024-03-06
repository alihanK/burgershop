import 'package:burgershop/components/burger_tile.dart';
import 'package:burgershop/models/burger_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/burger.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //remove item from cart
  void removeFromCart(Burger burger) {
    Provider.of<BurgerShop>(context, listen: false).removeItemFromCart(burger);
  }

  //pay button tapped
  void payNow() {
    /*
   
   
   
   FILL PUT YOUR PAYMENT SERVICE HERE
  


    */
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BurgerShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              //heade
              const Text(
                "CART PAGE",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              //List OF Cart
              Expanded(
                  child: ListView.builder(
                      itemCount: value.userCart.length,
                      itemBuilder: (context, index) {
                        //get individual cart items
                        Burger eachBurger = value.userCart[index];

                        //return BURGER Tile
                        return BurgerTile(
                            burger: eachBurger,
                            onPressed: () => removeFromCart(eachBurger),
                            icon: Icon(Icons.delete));
                      })),

              GestureDetector(
                onTap: payNow,
                child: Container(
                  padding: EdgeInsets.all(25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      'PAY NOW',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
