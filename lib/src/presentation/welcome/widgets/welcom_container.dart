import 'package:banknote/src/app/resources/color.dart';
import 'package:banknote/src/presentation/welcome/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeContainer extends StatelessWidget {
  WelcomeContainer({
    super.key,
    required this.title,
    required this.supText,
    required this.onPressed,
  });
  String title;
  String supText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  supText,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Get.offAll(() => SplashPage()),
                      child: Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Text(
                            "Skip",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: onPressed,
                      child: Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20), color: p1),
                        child: const Center(
                          child: Text(
                            "Next",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
