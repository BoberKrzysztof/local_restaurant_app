import 'package:flutter/material.dart';
import 'package:local_restaurant_app/models/Product.dart';
import 'package:local_restaurant_app/screens/home_screen.dart';
import 'package:local_restaurant_app/widgets/product_item.dart';

class ProductsScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
        id: 'p1',
        title: 'Cheeseburger',
        description: 'Roll, double meat, cheddar, onion, tomato',
        price: 29.99,
        imageurl: 'https://cdn.mcdonalds.pl/uploads/20220922160220/cheeseburger.png',
    ),
    Product(
        id: 'p2',
        title: 'Hamburger',
        description: 'Roll, meat, onion, cucumber, tomato',
        price: 31.99,
        imageurl: 'https://amrestcdn.azureedge.net/bk-web-ordering/BK%20PL/bk_images/oferty_specjalne/plantbased_new/PBhamburger.png',
    ),
    Product(
      id: 'p3',
      title: 'Vegeburger',
      description: 'Roll, onion, cucumber, tomato',
      price: 22.99,
      imageurl: 'https://amrestcdn.azureedge.net/bk-web-ordering/BK%20PL/bk_images/oferty_specjalne/plantbased_new/PBhamburger.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: GridView.builder(
        itemCount: loadedProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3/2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
        itemBuilder: (_, i) => ProductItem(
          loadedProducts[i].id,
          loadedProducts[i].title,
          loadedProducts[i].imageurl,
        ),
      ),
    );
  }
}