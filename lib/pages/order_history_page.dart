import 'package:flutter/material.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({super.key});

  // Placeholder list of past orders
  final List<Map<String, String>> pastOrders = const [
    {
      'orderNumber': 'ORD123456',
      'date': '2023-10-26',
      'total': '\$150.00',
    },
    {
      'orderNumber': 'ORD789012',
      'date': '2023-10-20',
      'total': '\$75.50',
    },
    {
      'orderNumber': 'ORD345678',
      'date': '2023-10-15',
      'total': '\$220.75',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order History'),
      ),
      body: ListView.builder(
        itemCount: pastOrders.length,
        itemBuilder: (context, index) {
          final order = pastOrders[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Number: ${order['orderNumber']}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text('Date: ${order['date']}'),
                  const SizedBox(height: 8.0),
                  Text('Total: ${order['total']}'),
                  // You might add a button here to view order details
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
