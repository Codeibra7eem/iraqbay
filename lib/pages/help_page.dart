import 'package:flutter/material.dart';
import 'common_app_bar.dart';
class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

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
              Text(
                'Frequently Asked Questions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // Placeholder for FAQs
              Container(
                height: 150,
                color: Colors.grey[200],
                child: Center(
                  child: Text('FAQ Section Placeholder'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Contact Information',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // Placeholder for Contact Information
              Container(
                height: 100,
                color: Colors.grey[200],
                child: Center(
                  child: Text('Contact Information Placeholder'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Contact Form',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // Placeholder for Contact Form
              Container(
                height: 200,
                color: Colors.grey[200],
                child: Center(
                  child: Text('Contact Form Placeholder'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
