import 'package:banknote/src/app/resources/color.dart';
import 'package:banknote/src/presentation/auth/pages/signin_page.dart';
import 'package:banknote/src/presentation/auth/widget/face&google_cont.dart';
import 'package:banknote/src/presentation/auth/widget/sin_button.dart';
import 'package:banknote/src/presentation/home/pages/bottomNavigationbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/widgets/button.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    bool? checkedValue = false;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Screen.jpg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Compete Account ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SignButton(
                    hintText: 'First Name',
                    iconImage: "assets/icon/Profile.png",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SignButton(
                    hintText: 'Last Name',
                    iconImage: "assets/icon/Profile.png",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SignButton(
                    hintText: 'Email',
                    iconImage: "assets/icon/Message.png",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SignButton(
                    hintText: 'Password',
                    iconImage: "assets/icon/Lock.png",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SignButton(
                    hintText: 'Confirm Password',
                    iconImage: "assets/icon/Lock.png",
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: checkedValue,
                        onChanged: (value) {
                          setState(() {
                            checkedValue = value;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      const Text(
                        "I accept all the ",
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                      const Text(
                        "Terms & Conditions",
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Button(
                      onpress: () {
                         Get.to(() => const ControlView());
                      },
                      buttonText: "Sign up",
                      textColor: Colors.white,
                      buttonColor: p1,
                      buttonRadius: 20,
                      buttonHight: 60,
                      buttonWidth: 320,
                      textSize: 14),
                  const SizedBox(
                    height: 7,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "______________     ",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        "OR",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        "   ______________",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SinInMethod(
                        methodImage: "assets/icon/google.png",
                        methodText: "google",
                        onpress: () {},
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      SinInMethod(
                        methodImage: 'assets/icon/facebook.png',
                        methodText: 'Facebook',
                        onpress: () {},
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const SignInPage());
                    },
                    child: const Center(
                        child: Text(
                      " have an account ?",
                      style: TextStyle(color: Colors.blue),
                    )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
