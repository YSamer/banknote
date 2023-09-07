import 'package:banknote/src/app/utils/color.dart';
import 'package:banknote/src/app/widgets/button.dart';
import 'package:banknote/src/presentation/auth/pages/signin_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: p4,
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 80,
          ),
          Image.asset("assets/images/startLOGO.png"),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          Image.asset("assets/images/startImage.png"),
          SizedBox(
            height: MediaQuery.of(context).size.height / 19,
          ),
          Image.asset("assets/images/startText.png"),
          SizedBox(
            height: MediaQuery.of(context).size.height / 17,
          ),
          Button(
            buttonColor: p3,
            buttonHight: 52,
            buttonRadius: 25,
            buttonText: 'Get Start',
            buttonWidth: 230,
            onpress: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (_) => const SignInPage(),
                ),
              );
            },
            textColor: Colors.black,
            textSize: 18,
          ),
        ]),
      ),
    );
  }
}
