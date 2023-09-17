import 'package:banknote/src/app/utils/color.dart';
import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  bool _keep1 = false;
 bool _keep2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Expanded(child: Image.asset("assets/images/Screen.jpg")),
            Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 15,
                      ),
                      Center(child: Image.asset("assets/images/logodark.png")),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 20,
                      ),
                      const Text(
                        "Language",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 20,
                      ),
                      TextButton(
                        onPressed: () {
                          _keep1 = !_keep1;
                          setState(() {});
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('English',style: TextStyle(color: Colors.black),),
                            _keep1
                                ? Image.asset('assets/icon/Check List Icon.png')
                                : Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                     color: p7,
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          _keep2 = !_keep2;
                          setState(() {});
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Arabic',style: TextStyle(color: Colors.black),),
                            _keep2
                                ? Image.asset('assets/icon/Check List Icon.png')
                                : Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: p7,
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ])),
          ],
        ),
      ),
    );
  }
}
