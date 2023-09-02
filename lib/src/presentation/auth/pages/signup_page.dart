import 'package:banknote/src/app/resources/color.dart';
import 'package:banknote/src/app/widgets/button.dart';
import 'package:banknote/src/presentation/auth/pages/create_account.dart';
import 'package:banknote/src/presentation/auth/widget/sin_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/Screen.jpg",
                ),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Center(child: Image.asset("assets/images/logodark.png")),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Sign Up ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 11,
            ),
            SignButton(
              hintText: "  Enter Phone ",
              iconImage: "assets/icon/Calling.png",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.2,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Button(
                  onpress: () {
                    Get.to(() => const CreateAccountPage());
                  },
                  buttonText: "Next",
                  textColor: Colors.white,
                  buttonColor: p1,
                  buttonRadius: 20,
                  buttonHight: 50,
                  buttonWidth: 130,
                  textSize: 16),
            ),
          ]),
        )),
      ),
    );
  }
}
