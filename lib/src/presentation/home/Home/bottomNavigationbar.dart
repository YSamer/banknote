import 'package:banknote/src/app/Controller/home_view_controller.dart';
import 'package:banknote/src/app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlView extends StatelessWidget {
  const ControlView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControlViewModel>(
      init: Get.put(ControlViewModel()),
      builder: (controller) => Scaffold(
        body: controller.currentScreen,
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }

  Widget bottomNavigationBar() {
    return GetBuilder<ControlViewModel>(
      init: ControlViewModel(),
      builder: (controller) => 
      
      BottomNavigationBar(
       backgroundColor: p3, 
        items: [
        BottomNavigationBarItem(
          icon: SizedBox(
              height: 30,
              width: 30,
              child: Image.asset("assets/icon/Icon Home Active.png")),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
              height: 30,
              width: 30,
              child: Image.asset("assets/icon/Chat.png")),
          label: "Chat",
        ),
        BottomNavigationBarItem(
            icon: SizedBox(
              height: 30,
              width: 30,
              child: Image.asset("assets/icon/Notification.png"),
            ),
            label: "Notification"),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 30,
            width: 30,
            child: Image.asset("assets/icon/Setting.png"),
          ),
          label: "Setting",
        ),
      ],
       currentIndex: controller.navigatorValue,
        onTap: (index) {
          controller.changeSelectedValue(index);
        },
        elevation: 0,
        selectedItemColor: const Color.fromRGBO(0, 48, 96, 1),
      ),
    );
  }
}
