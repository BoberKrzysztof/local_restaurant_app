import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical:20.0),
          child: GNav(
            textStyle: GoogleFonts.montserratAlternates(
              color: const Color(0xFFFE1EBA),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            backgroundColor: Colors.black,
            color: const Color(0xD0FE1EBA),
            activeColor: const Color(0xFFFE1EBA),
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            onTabChange: (index) {
                print(index);
            },
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.category,
                text: 'Categories',
              ),
              GButton(
                icon: Icons.fastfood,
                text: 'Products',
              ),
              GButton(
                icon: Icons.shopping_cart,
                text: 'Cart',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
