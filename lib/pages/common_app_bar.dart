import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Map<String, String>> categories;

  const CommonAppBar({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(
      kToolbarHeight + 50.0); // Adjusted height for the bottom bar

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // TODO: Implement search functionality
          },
        ),
      ],
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/',
              (route) => false,
            ); // Navigate back to home and remove all previous routes
          },
          child: Image.asset(
            'pictures/Iraqbay.png', // Replace with your actual logo image path
            fit: BoxFit.contain,
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // Adjust height as needed
        child: Container(
          color: Colors.white, // Or a color that fits your theme
          height: 50.0,
          child: Center(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Center(
                    child: Text(
                      categories[index]['name']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
