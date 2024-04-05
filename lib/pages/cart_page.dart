import 'package:chinamaxapp/components/button.dart';
import 'package:chinamaxapp/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/food.dart';
import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // remove from cart
  void removeFromCart(Food food, BuildContext context) {
    // get access to shop
    final shop = context.read<Shop>();

    // remove from cart
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, shop, child) => Scaffold(
          backgroundColor: primaryColor,
          appBar: AppBar(
            title: Text(
              "My Cart",
              style: TextStyle(
                color: Colors.white, // Set text color to white
              ),
            ),
            backgroundColor: primaryColor,
            centerTitle: true, // Center the title text
            iconTheme: IconThemeData(color: Colors.white), // Set back button icon color to white
          ),
          body: Column(
            children: [
            // CUSTOMER CART
            Expanded(
              child: ListView.builder(
                itemCount: shop.cart.length,
                itemBuilder: (context, index) {
                  // Check if index is within bounds of the cart list
                  if (index < shop.cart.length) {
                    // Get food from cart
                    final Food food = shop.cart[index];

                    // Get food name and price
                    final String foodName = food.name;
                    final String foodPrice = food.price;

                    // Return list tile
                    return Container(
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: ListTile(
                        title: Text(
                          foodName,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        subtitle: Text(foodPrice,
                          style: TextStyle(
                              color: Colors.grey[200],
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Colors.grey[300],
                          ),
                          onPressed: () => removeFromCart(food, context),
                        ),
                      ),
                    );
                  } else {
                    // Return an empty container as a placeholder
                    return Container();
                    }
                  },
                ),
            ),
              // PAY BUTTON
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: MyButton(
                    text: "Pay Now",
                    onTap: () {}
                ),
              )
            ],
          ),
        ),
    );
  }
}