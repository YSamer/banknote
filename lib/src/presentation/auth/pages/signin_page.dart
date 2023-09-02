import 'package:banknote/src/app/resources/color.dart';
import 'package:banknote/src/app/widgets/button.dart';
import 'package:banknote/src/presentation/auth/pages/recovery_password.dart';
import 'package:banknote/src/presentation/auth/pages/signup_page.dart';
import 'package:banknote/src/presentation/auth/widget/face&google_cont.dart';
import 'package:banknote/src/presentation/auth/widget/sin_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                Center(child: Image.asset("assets/images/logodark.png")),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Login To Your Account",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 60,
                ),
                SignButton(
                  hintText: "  Phone number",
                  iconImage: "assets/icon/Calling.png",
                ),
                const SizedBox(
                  height: 25,
                ),
                SignButton(
                  hintText: 'Password',
                  iconImage: "assets/icon/Lock.png",
                ),
                const SizedBox(
                  height: 17,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const RecoveryPasswordPage());
                  },
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forget password",
                      style: TextStyle(
                        fontSize: 13,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Button(
                    onpress: () {},
                    buttonText: "Login",
                    textColor: Colors.white,
                    buttonColor: p1,
                    buttonRadius: 20,
                    buttonHight: 60,
                    buttonWidth: 320,
                    textSize: 14),
                const SizedBox(
                  height: 30,
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
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const SignUpPage());
                  },
                  child: const Center(
                      child: Text(
                    "Not have an account ?",
                    style: TextStyle(color: Colors.blue),
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
