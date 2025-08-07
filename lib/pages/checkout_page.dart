import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shipping Address',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8.0),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('John Doe'),
                    Text('123 Main Street'),
                    Text('Anytown, CA 91234'),
                    Text('USA'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            Text(
              'Payment Information',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8.0),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Payment Method: Visa'),
                    Text('Card Number: **** **** **** 1234'),
                    Text('Expiry Date: 12/25'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            Text(
              'Order Summary',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8.0),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Subtotal:'),
                        Text('\$100.00'),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Shipping:'),
                        Text('\$10.00'),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Total:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$110.00',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement order placement logic
                },
                child: const Text('Place Order'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
