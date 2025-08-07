import 'package:flutter/material.dart';
import 'common_app_bar.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {'name': 'Electronics', 'image': 'assets/electronics.png'},
    {'name': 'Fashion', 'image': 'assets/fashion.png'},
    {'name': 'Home & Garden', 'image': 'assets/home_garden.png'},
    {'name': 'Sports', 'image': 'assets/sports.png'},
    {'name': 'Books', 'image': 'assets/books.png'},
    {'name': 'Toys', 'image': 'assets/toys.png'},
    {'name': 'Furniture', 'image': 'assets/furniture.png'},
  ];

  final List<Map<String, dynamic>> products = [
    {'name': 'Smartphone', 'price': '\$299', 'image': 'assets/smartphone.png'},
    {'name': 'T-Shirt', 'price': '\$19', 'image': 'assets/tshirt.png'},
    {
      'name': 'Garden Tools',
      'price': '\$50',
      'image': 'assets/garden_tools.png',
    },
    {
      'name': 'Running Shoes',
      'price': '\$80',
      'image': 'assets/running_shoes.png',
    },
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(categories: []),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banners Section
              Container(
                height: 150,
                color: Colors.grey[300],
                child: Center(
                  child: Text(
                    'Promotional Banner',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Featured Products',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/productDetail');
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.grey[300], // Placeholder color
                              child: Center(
                                child: Text('Product Image'),
                              ), // Placeholder text
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  products[index]['name'],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(products[index]['price']),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
