import 'package:banknote/src/presentation/welcome/pages/onboarding_page3.dart';
import 'package:banknote/src/presentation/welcome/widgets/welcom_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingPage2 extends StatelessWidget {
  const OnBoardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Splash.png",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
               SizedBox(
                height: MediaQuery.of(context).size.height/10,
              ),
                Center(child: Image.asset("assets/images/logo.png")),
               SizedBox(
                height: MediaQuery.of(context).size.height/12,
              ),
                Center(child: Image.asset("assets/images/coin2.png")),
                SizedBox(
                height: MediaQuery.of(context).size.height/10,
              ),
                WelcomeContainer(
                  onPressed: (() {
                    Get.to(() => const OnBoardingPage3());
                  }),
                  title: 'Registration in all kinds of loans and associations',
                  supText:
                      'Hire expert & professional service provider to make your daily life work easier',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
