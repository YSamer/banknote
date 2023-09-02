
import 'package:banknote/src/app/resources/color.dart';
import 'package:banknote/src/app/widgets/button.dart';
import 'package:banknote/src/presentation/auth/widget/arrow_back_cont.dart';
import 'package:banknote/src/presentation/auth/widget/sin_button.dart';
import 'package:banknote/src/presentation/home/pages/bottomNavigationbar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/images/Screen.jpg",
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(
                height: MediaQuery.of(context).size.height / 14,
              ),
               Row(
                children: [
                  ArrowBackContainer(
                    onpress: () {
                      Get.back();
                    },
                  ),
                  const SizedBox(
                    width: 110,
                  ),
                  Image.asset("assets/images/logodark.png"),
                ],
              ),
               SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              const Text(
                "Reset your password \nhere  ",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Enter New Password and don’t forget it",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
               SizedBox(
               height: MediaQuery.of(context).size.height / 30,
              ),
              SignButton(
                hintText: "  New Password ",
                iconImage: "assets/icon/Lock.png",
              ),
              const SizedBox(
                height: 20,
              ),
              SignButton(
                hintText: "  Confirm Password ",
                iconImage: "assets/icon/Lock.png",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Button(
                    onpress: () {
                       Get.to(() => const ControlView());
                    },
                    buttonText: "Next",
                    textColor: Colors.white,
                    buttonColor: p1,
                    buttonRadius: 20,
                    buttonHight: 50,
                    buttonWidth: 130,
                    textSize: 16),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
