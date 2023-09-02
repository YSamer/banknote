import 'package:banknote/src/app/resources/color.dart';
import 'package:banknote/src/app/widgets/button.dart';
import 'package:banknote/src/presentation/auth/widget/arrow_back_cont.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/images/Screen.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Row(
                children: [
                  ArrowBackContainer(
                    onpress: () {
                      Get.back();
                    },
                  ),
                  SizedBox( width: MediaQuery.of(context).size.width/3.8,),
                  Image.asset("assets/images/logodark.png")
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 33,
              ),
              const Text("Edit Profile"),
              Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: const AssetImage("assets/images/person.png"),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25), color: p1),
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 33,
              ),
              const Text("First Name"),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.person_outlined,
                    size: 30,
                  ),
                  hintText: "Enter your First Name",
                  hintStyle: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.0),
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Last Name"),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.person_outlined,
                    size: 30,
                  ),
                  hintText: "Enter your Last Name",
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.0),
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Email"),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    size: 30,
                  ),
                  hintText: "Enter your Last Email",
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.0),
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Phone Number"),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.phone_outlined,
                    size: 30,
                  ),
                  hintText: "Enter your Phone Number",
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.0),
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 33,
              ),
              Center(
                child: Button(
                    onpress: () {},
                    buttonText: "Save",
                    textColor: Colors.white,
                    buttonColor: p1,
                    buttonRadius: 20,
                    buttonHight: 60,
                    buttonWidth: 350,
                    textSize: 18),
              )
            ]),
          ),
        ),
      ]),
    );
  }
}
