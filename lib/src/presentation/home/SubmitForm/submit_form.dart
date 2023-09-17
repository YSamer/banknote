import 'dart:io';

import 'package:banknote/src/app/utils/color.dart';
import 'package:banknote/src/app/widgets/button.dart';
import 'package:banknote/src/presentation/auth/widget/arrow_back_cont.dart';
import 'package:banknote/src/presentation/home/SubmitForm/widget/add_attachment_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubmitFormPage extends StatefulWidget {
  const SubmitFormPage({super.key});

  @override
  State<SubmitFormPage> createState() => _SubmitFormPageState();
}

class _SubmitFormPageState extends State<SubmitFormPage> {
    List<File> _files = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(children: [
          Expanded(
              child: Image.asset(
            "assets/images/Screen.jpg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          )),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ArrowBackContainer(
                        onpress: () {
                          Get.back();
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.5,
                      ),
                      Image.asset("assets/images/logodark.png"),
                    ],
                  ),
                  SizedBox(
                    height:MediaQuery.of(context).size.height/30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Collection 1"),
                      Text(
                        "50.20 SAR",
                        style: TextStyle(color: p1),
                      )
                    ],
                  ),
                 SizedBox(
                    height:MediaQuery.of(context).size.height/70,
                  ),
                  const Text(
                    "Please fill in the following information",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                   SizedBox(
                    height:MediaQuery.of(context).size.height/50,
                  ),
                  const Text("Full Name"),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person_outlined,
                        size: 38,
                      ),
                      hintText: "Enter your Name",
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 0.0),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ),
                   SizedBox(
                  height:MediaQuery.of(context).size.height/60,
                  ),
                  const Text("Phone Number"),
                   SizedBox(   height:MediaQuery.of(context).size.height/60,   
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.phone_outlined,
                        size: 38,
                      ),
                      hintText: "Enter your number",
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 0.0),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ),
                   SizedBox(
                  height:MediaQuery.of(context).size.height/60,
                  ),
                  const Text("Date"),
                   SizedBox(
                 height:MediaQuery.of(context).size.height/60,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.date_range_outlined,
                        size: 38,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext builder) {
                              return SizedBox(
                                height: MediaQuery.of(context).size.height / 2,
                                child: Column(
                                  children: [
                                     SizedBox(
                                  height:MediaQuery.of(context).size.height/60,
                                    ),
                                    const Text("Choose date"),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              3,
                                      child: CupertinoDatePicker(
                                        initialDateTime: DateTime.now(),
                                        onDateTimeChanged: (DateTime newdate) {
                                          // Do something with the new date
                                        },
                                        use24hFormat: true,
                                        maximumDate: DateTime.now()
                                            .add(Duration(days: 365)),
                                        minimumYear: DateTime.now().year - 4,
                                        maximumYear: DateTime.now().year + 2,
                                        minuteInterval: 1,
                                        mode: CupertinoDatePickerMode.date,
                                      ),
                                    ),
                                     SizedBox(
                                       height:MediaQuery.of(context).size.height/60,
                                    ),
                                    Button(
                                        onpress: () {},
                                        buttonText: "Confirm Date",
                                        textColor: Colors.white,
                                        buttonColor: p1,
                                        buttonRadius: 18,
                                        buttonHight: 80,
                                        buttonWidth: 300,
                                        textSize: 18)
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: const Icon(
                          Icons.arrow_drop_down_outlined,
                          size: 38,
                        ),
                      ),
                      hintText: "Choose date",
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ),
                   SizedBox(
                      height:MediaQuery.of(context).size.height/70,
                  ),
                  const Text("City / Province"),
                   SizedBox(
                 height:MediaQuery.of(context).size.height/70,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.location_on_outlined,
                        size: 38,
                      ),
                      hintText: "Enter your city, province",
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 0.0),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ),
                   SizedBox(
                    height:MediaQuery.of(context).size.height/70,
                  ),
                  const Text("Detail Location"),
                   SizedBox(
                    height:MediaQuery.of(context).size.height/70,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText:
                          "Type detailed location to make it easier for us to pick up the package",
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 0.0),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    maxLength: 250,
                    maxLines: 10,
                  ),
                   SizedBox(
                   height:MediaQuery.of(context).size.height/60,
                  ),
                    AddAttachmentWidget(
                      onFetchFiles: (files) {
                        _files = List.of(files);
                        setState(() {});
                      },
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 80,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                              child: Text(
                            "Cancel",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                            ),
                          )),
                        ),
                      ),
                      Button(
                          onpress: () {},
                          buttonText: "Done",
                          textColor: Colors.white,
                          buttonColor: p1,
                          buttonRadius: 18,
                          buttonHight: 80,
                          buttonWidth: 160,
                          textSize: 18)
                    ],
                  )
                ],
              ),
            ),
          ])
        ]),
      ),
    );
  }
}
