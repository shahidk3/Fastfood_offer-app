import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final Map<String, Object> product;
  const ProductDetailsPage({
    super.key,
    required this.product,});

    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text( product ['title'] as String,
          style: Theme.of(context).textTheme.titleLarge),
          const Spacer(flex: 2,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset( product ['imageurl'] as String,
            scale: 3, 
            ),
          ),
          const Spacer(flex: 2),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 247, 249, 1),
              borderRadius: BorderRadius.circular(40),
            ),
            child:Column(
              children: [
                const Spacer(),
                
                const Text(
                  'Coupan Code:OurApp25252xyz',
                ),
                
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    minimumSize: const Size(double.infinity, 50),
                    
                  ),
                  child: const Text('Add to cart', style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  
                  ),
                  ),
                  
                  ),
                ),
                const Spacer(),
              ],
            )
          ),
        ],
      ),

    );
  }
}
