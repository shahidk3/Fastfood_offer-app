import "package:fastfood_offers/global_variables.dart";
import "package:fastfood_offers/product_card.dart";
import "package:fastfood_offers/product_details_page.dart";
import "package:flutter/material.dart";


class HomePage extends StatefulWidget {
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> filters = const [ 'All', 'Burger', 'Coke', 'French Fries'];
  late String selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter = filters[0];
  }


  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(225, 225, 225, 1),
                    ),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(50), 
                    ),
                  );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('HURRY!\nAmazing Offers', 
                  style: Theme.of(context).textTheme.titleLarge,
                              ),
                ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'search',
                  prefixIcon: Icon(Icons.search),
                  border: border,
                  enabledBorder: border,
                  focusedBorder: border,
                  
                ),
              ),
              ),
              
              ],
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                itemCount: filters.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final filter = filters[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,
                    ),                   
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedFilter = filter;
                        });
                      },
                      child: Chip(
                        backgroundColor: selectedFilter == filter
                        ? Theme.of(context).colorScheme.primary:
                         const Color.fromRGBO(245, 247, 249, 1),
                        side: const BorderSide(
                          color: Color.fromRGBO(245, 247, 249, 1),
                        ),
                        label: Text(filter),
                        labelStyle: const TextStyle(
                          fontSize: 16,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15,),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      
                      
                      ),
                    ),
                  ); 
              
              }),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return ProductDetailsPage(product: product);
                      }, ), );
                    },
                    child: ProductCard(
                      title: product['title'] as String,
                      price: product['price'] as double,
                      image: product['imageurl'] as String,
                    
                    ),
                  );            
                },
              ),
            ),
           
            
          ],
        ),
      ),

    );
  }
}