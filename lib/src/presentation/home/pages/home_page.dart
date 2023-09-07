import 'package:banknote/src/app/utils/color.dart';
import 'package:banknote/src/presentation/home/pages/collection_details.dart';
import 'package:banknote/src/presentation/home/pages/our_services.dart';
import 'package:banknote/src/presentation/home/widget/category_cont.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 7,
          ),
          Center(child: Image.asset("assets/images/home.png")),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Welcome, Abdallah!",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "You’re ready to go, let’s find you a circlet",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Our Services",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const OurServicesPage());
                  },
                  child: Text(
                    "See All",
                    style: TextStyle(fontSize: 15, color: p1),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
              onTap: () {
                Get.to(() => CollectionDetailsPage());
              },
              child: TiketContainer()),
          TiketContainer(),
          TiketContainer(),
          TiketContainer(),
        ]),
      ),
    );
  }
}
