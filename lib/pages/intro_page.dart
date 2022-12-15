import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        //logo
        Padding(
          padding: const EdgeInsets.only(left: 80, right: 80, top: 160),
          child: Image.asset('lib/images/avocado.png'),
        ),

        //We deliver grcoeries to your door step
        Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'We deliver groceries to your door step',
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(
          height: 24,
        ),

        //Fresh Item every day
        Text(
          'Fresh Items every day',
          style: TextStyle(color: Colors.grey[600]),
        ),

        const Spacer(),

        //Get started button
        GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) {
              return const HomePage();
            }),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: const Text(
              "Get Started",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),

        const Spacer()
      ]),
    );
  }
}
