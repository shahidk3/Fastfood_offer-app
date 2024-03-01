import "package:fastfood_offers/global_variables.dart";
import "package:flutter/material.dart";

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart')
      ),
    );
  }
}