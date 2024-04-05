import 'package:flutter/material.dart';
import 'food.dart';

class Shop extends ChangeNotifier{
  // food menu
  final List<Food> _foodMenu = [
    // orange chicken
    Food(
        name: "Orange Chicken",
        price: "6.09",
        imagePath: "lib/images/orange-chicken.png",
        rating: "4.9"
    ),

    // bourbon
    Food(
        name: "Bourbon Chicken",
        price: "7.99",
        imagePath: "lib/images/kung-pao-chicken.png",
        rating: "3.9"
    ),

    // sweet and sour
    Food(
        name: "Sweet and Sour Chicken",
        price: "7.09",
        imagePath: "lib/images/sweet-sour-pork.png",
        rating: "4.2"
    ),

    // beef and broccoli
    Food(
        name: "Beef and Broccoli",
        price: "7.99",
        imagePath: "lib/images/stir-fry.png",
        rating: "3.9"
    ),
  ];

  // customer cart
  List<Food> _cart = [];

  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Food food){
    _cart.remove(food);
    notifyListeners();
  }
}