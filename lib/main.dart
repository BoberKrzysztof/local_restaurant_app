import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_restaurant_app/screens/product_detail_screen.dart';
import 'screens/home_screen.dart';
import 'package:page_transition/page_transition.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        ProductDetailScreen.routeName : (ctx) => ProductDetailScreen(),
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column(
          children: [
            Image.asset('assets/images/start_page.jpeg'),
            Text('Food App',
              style: GoogleFonts.montserratAlternates(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFFE1EBA),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        nextScreen: const HomePage(),
      splashIconSize: 340,
      duration: 2000,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.rightToLeftWithFade,
      animationDuration: const Duration(milliseconds: 2000),
    );
  }
}

// 33 minuta 29 sekunda