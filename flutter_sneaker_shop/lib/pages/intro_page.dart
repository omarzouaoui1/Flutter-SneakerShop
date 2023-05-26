import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //logo
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Image.asset(
              "lib/image/logo.png",
              height: 240,
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          //title
          const Text(
            "All Star",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          //sub title
          const Text(
            "Brand new sneakers of high quality",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 48,
          ),
          //start now button
          GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage())),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(8.0)),
              padding: const EdgeInsets.all(25.0),
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              child: const Center(
                child: Text(
                  "Shop Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
