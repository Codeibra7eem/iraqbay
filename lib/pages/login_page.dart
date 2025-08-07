import 'package:flutter/material.dart';

import 'common_app_bar.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Add a GlobalKey to the form for validation
  final _formKey = GlobalKey<FormState>();

  // Add TextEditingControllers for accessing text field values
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(categories: []),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            // Wrap the Column with a Form for validation
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // Add an introductory text
                  Text(
                    'Login to your account',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(height: 40.0),
                  TextFormField(
                    controller: _emailController, // Assign controller
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ), // Add rounded corners
                      ),
                      prefixIcon: Icon(Icons.email), // Add an icon
                    ),
                    keyboardType: TextInputType.emailAddress,
                    // Add validation for email
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      // Basic email format validation
                      if (!value.contains('@')) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: _passwordController, // Assign controller
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ), // Add rounded corners
                      ),
                      prefixIcon: Icon(Icons.lock), // Add an icon
                    ),
                    obscureText: true,
                    // Add validation for password
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters long';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () {
                      // Validate the form
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, proceed with login logic
                        // TODO: Implement login logic
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                        // You can access the email and password like this:
                        // String email = _emailController.text;
                        // String password = _passwordController.text;
                      }
                    },
                    // Make the login button more visually prominent
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      textStyle: TextStyle(fontSize: 18),
                      shape: RoundedRectangleBorder(
                        // Add rounded corners
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text('Login'),
                  ),
                  SizedBox(height: 16.0),
                  TextButton(
                    onPressed: () {
                      // TODO: Navigate to registration page
                      Navigator.pushNamed(
                        context,
                        '/register',
                      ); // Navigate to register page
                    },
                    child: const Text('Don\'t have an account? Register here.'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
