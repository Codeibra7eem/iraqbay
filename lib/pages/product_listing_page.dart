import 'package:flutter/material.dart';

class ProductListingPage extends StatelessWidget {
  const ProductListingPage({super.key});

  // Placeholder data for product listing
  final List<Map<String, dynamic>> products = const [
    {
      'name': 'Product 1',
      'imageUrl': 'https://via.placeholder.com/150',
      'price': '€10.00'
    },
    {
      'name': 'Product 2',
      'imageUrl': 'https://via.placeholder.com/150',
      'price': '€20.00'
    },
    {
      'name': 'Product 3',
      'imageUrl': 'https://via.placeholder.com/150',
      'price': '€30.00'
    },
    {
      'name': 'Product 4',
      'imageUrl': 'https://via.placeholder.com/150',
      'price': '€40.00'
    },
    {
      'name': 'Product 5',
      'imageUrl': 'https://via.placeholder.com/150',
      'price': '€50.00'
    },
    {
      'name': 'Product 6',
      'imageUrl': 'https://via.placeholder.com/150',
      'price': '€60.00'
    },
    {
      'name': 'Product 7',
      'imageUrl': 'https://via.placeholder.com/150',
      'price': '€70.00'
    },
    {
      'name': 'Product 8',
      'imageUrl': 'https://via.placeholder.com/150',
      'price': '€80.00'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Listing Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              // TODO: Implement filter functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.sort),
            onPressed: () {
              // TODO: Implement sort functionality
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Placeholder for filter/sort options UI
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('Filter by:'),
                Text('Sort by:'),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns in the grid
                crossAxisSpacing: 8.0, // Spacing between columns
                mainAxisSpacing: 8.0, // Spacing between rows
                childAspectRatio: 0.75, // Aspect ratio of each grid item
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return InkWell(
                  onTap: () {
                    // Navigate to product detail page (placeholder)
                    Navigator.pushNamed(context, '/productDetail',
                        arguments: product);
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: Image.network(product['imageUrl'],
                                fit: BoxFit.cover)),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(product['name'],
                                textAlign: TextAlign.center)),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
