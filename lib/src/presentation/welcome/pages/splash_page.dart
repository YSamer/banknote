import 'dart:async';

import 'package:banknote/src/presentation/welcome/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () => Get.to(const OnBoardingPage()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset("assets/images/Splash.png"),
        Center(
          child: Image.asset("assets/images/logo1.png"),
        ),
      ]),
    );
  }
}
