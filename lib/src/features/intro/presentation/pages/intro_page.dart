import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whattoeattoday/src/core/styles/app_colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/intro_background.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,

              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/intro_logo.png',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '100K+ Premium Recipe',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    const Text(
                      "Get",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 1.0,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    SizedBox(height: 5),
                    const Text(
                      "Cooking",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 1.0,
                        fontFamily: 'Roboto'
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Simple way to find Tasty Recipe",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        left: 70,
                        right: 70,
                        top: 50,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryColor,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            // Navigate to the next page or perform an action
                          },
                          child: const Text('Start cooking'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
