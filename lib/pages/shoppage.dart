import 'package:burgershop/models/burger.dart';
import 'package:burgershop/models/burger_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/burger_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add BURGER to cart
  void addToCart(Burger burger) {
    //add to cart
    Provider.of<BurgerShop>(context, listen: false).addItemtoCart(burger);

    //user know it add been successfully
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Successfully added to cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BurgerShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent[200],
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        children: [
                          const Text("HOT BURGERS ARE WAITING FOR YOU...",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.red)),
                          Image.asset("lib/images/fire.png", width: 30)
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),

                    //List of BURGERS
                    Expanded(
                      child: ListView.builder(
                          itemCount: value.burgerShop.length,
                          itemBuilder: (context, index) {
                            //get individual BURGER
                            Burger eachBurger = value.burgerShop[index];
                            //return the file for this BURGER
                            return BurgerTile(
                              burger: eachBurger,
                              onPressed: () => addToCart(eachBurger),
                              icon: Icon(Icons.add),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ));
  }
}
