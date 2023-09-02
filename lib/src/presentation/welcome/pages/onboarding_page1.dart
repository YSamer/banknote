import 'package:banknote/src/presentation/welcome/pages/onboarding_page2.dart';
import 'package:banknote/src/presentation/welcome/widgets/welcom_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingPage1 extends StatelessWidget {
  const OnBoardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset("assets/images/Splash.png", fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
            Column(
              children: [
                 SizedBox(
                  height: MediaQuery.of(context).size.height/10,
                ),
                Center(child: Image.asset("assets/images/logo.png")),
                const SizedBox(
                  height: 30,
                ),
                Center(child: Image.asset("assets/images/coin1.png")),
               SizedBox(
                  height: MediaQuery.of(context).size.height/20,
                ),
                WelcomeContainer(
                  onPressed: (() {
                    Get.to(() => const OnBoardingPage2());
                  }),
                  title: 'The easiest transfers',
                  supText: 'Book Your accessories from anywhere at anytime',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
