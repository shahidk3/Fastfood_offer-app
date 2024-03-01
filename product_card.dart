import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,

    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(216, 240, 253, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium,),
            const SizedBox(height: 5),
            Text(
              'At Discounted Price', 
               style: Theme.of(context).textTheme.bodySmall),
                      
            const SizedBox(height: 5),
            Center(
              child: Image(
                image: AssetImage(image),
                height: 175,
                ),
            ),
        
          ],
        ),
      ),

    );
  }
}
