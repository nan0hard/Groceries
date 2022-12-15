import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // List of items on sale
  final List _shopItems = const [
    // [itemName, itemPrice, imagePath, color]
    ["Avocado", "50.50", "lib/images/avocado.png", Colors.green],
    ["Banana", "60.00", "lib/images/banana.png", Colors.yellow],
    ["Chicken", "180.00", "lib/images/chicken.png", Colors.brown],
    ["Water", "20.00", "lib/images/water.png", Colors.blue],
  ];

  //List of cart items
  List _cartItems = [];

  get cartItems => _cartItems;
  get shopItems => _shopItems;

  //adding a item to a cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //removing a item from a cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //Calculating total
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }

    return totalPrice.toStringAsFixed(2);
  }
}
