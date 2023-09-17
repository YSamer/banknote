import 'package:banknote/src/app/providers/auth_provider.dart';
import 'package:banknote/src/presentation/home/Setting/edit_profile_page.dart';
import 'package:banknote/src/presentation/home/Category/our_category.dart';
import 'package:banknote/src/presentation/home/Policy/policy_page.dart';
import 'package:banknote/src/presentation/home/Setting/language_page.dart';
import 'package:banknote/src/presentation/home/Setting/widget/setting_widget.dart';
import 'package:banknote/src/presentation/welcome_page/start_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthProvider>().currentUser;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Expanded(child: Image.asset("assets/images/Screen.jpg")),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  Center(child: Image.asset("assets/images/logodark.png")),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  const Text(
                    "Setting",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10000.0),
                        child: CachedNetworkImage(
                          imageUrl: user?.photo ?? '',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) =>
                                  CircularProgressIndicator(
                                      value: downloadProgress.progress),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 5,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Joined",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text("2 month ago")
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "${user!.fName} " "\n${user.lName}",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InformationWidget(
                    infoText: 'Edit Profile',
                    onpress: () {
                      Get.to(const EditProfilePage());
                    },
                  ),
                  InformationWidget(
                    infoText: 'My service',
                    onpress: () {
                      Get.to(() => const OurCategory());
                    },
                  ),
                  InformationWidget(
                    infoText: 'Privacy Policy',
                    onpress: () {
                      Get.to(() => PolicyPage());
                    },
                  ),
                  InformationWidget(
                    infoText: 'Language',
                    onpress: () {
                      Get.to(() => LanguagePage());
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    height: 5,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () async {
                      await context
                          .read<AuthProvider>()
                          .logout()
                          .then((value) => Navigator.pushAndRemoveUntil(
                              context,
                              CupertinoPageRoute(
                                builder: (_) => const StartPage(),
                              ),
                              (route) => false));
                    },
                    child: const Text(
                      "Sign Out",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
          ),
        ]),
      ),
    );
  }
}
