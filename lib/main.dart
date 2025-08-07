import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
import 'pages/product_listing_page.dart';
import 'pages/product_detail_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/cart_page.dart';
import 'pages/checkout_page.dart';
import 'pages/profile_page.dart';
import 'pages/order_history_page.dart';
import 'pages/help_page.dart';
import 'pages/store_page.dart';
import 'pages/admin_panel_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IQbay',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
        textTheme: GoogleFonts.latoTextTheme(
          // Using Lato font
          Theme.of(context).textTheme,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF8B0000), // Dark Red
          foregroundColor: Color(0xFFF5F5DC), // Warm sandy beige
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
          elevation: 4.0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      initialRoute: '/login', // Set initial route to login
      routes: {
        '/login': (context) => LoginPage(), // Keep login route for navigation
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/productListing': (context) => const ProductListingPage(),
        '/productDetail': (context) => const ProductDetailPage(),
        '/cart': (context) => const CartPage(),
        '/checkout': (context) => const CheckoutPage(),
        '/profile': (context) => const ProfilePage(),
        '/orderHistory': (context) => const OrderHistoryPage(),
        '/help': (context) => const HelpPage(),
        '/store': (context) => const StorePage(),
        '/adminPanel': (context) => const AdminPanelPage(),
      },
    );
  }
}

