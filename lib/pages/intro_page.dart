import 'package:flutter/material.dart';
import 'package:sneaker_shop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Image.asset("lib/images/logo.png", height: 240)),
                const SizedBox(height: 48),
                const Text(
                  "Just do it",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 24),
                const Text(
                  "Brand new sneakers and custom kicks made with premium quality",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 48),
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage())),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(25),
                    child: Center(
                      child: Text(
                        "Shop now",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
