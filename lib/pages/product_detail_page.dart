import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Placeholder product data
    const String productName = 'Sample Product';
    const String productPrice = '\$19.99';
    const String productDescription =
        'This is a sample product description. It provides details about the product, its features, and benefits.';
    const List<String> productImages = [
      'https://via.placeholder.com/400',
      'https://via.placeholder.com/400/FF0000', // Example of another placeholder image
      'https://via.placeholder.com/400/0000FF', // Example of another placeholder image
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(productName),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Images (Placeholder)
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productImages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      productImages[index],
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    productPrice,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: Colors.green),
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    productDescription,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 24.0),
                  Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text('Add to Cart'))),
                      const SizedBox(width: 8.0),
                      Expanded(
                          child: OutlinedButton(
                              onPressed: () {},
                              child: const Text('Add to Wishlist'))),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
