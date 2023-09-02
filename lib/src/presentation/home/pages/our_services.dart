import 'package:banknote/src/presentation/auth/widget/arrow_back_cont.dart';
import 'package:banknote/src/presentation/home/widget/tikct_cont.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OurServicesPage extends StatelessWidget {
  const OurServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Stack(children: [
        Image.asset(
          "assets/images/Screen.jpg",
          fit: BoxFit.cover,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ArrowBackContainer(
              onpress: () {
                Get.back();
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 15, left: 15, bottom: 15),
            child: Text(
              "Our Services",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          TiketContainer(),
          TiketContainer(),
          TiketContainer(),
          TiketContainer(),
        ]),
      ]),
    
    
    );
  }
}
