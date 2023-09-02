import 'package:banknote/src/presentation/home/pages/Notification_page.dart';
import 'package:banknote/src/presentation/home/pages/chatPage.dart';
import 'package:banknote/src/presentation/home/pages/home_page.dart';
import 'package:banknote/src/presentation/home/pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlViewModel extends GetxController {
  int navigatorValue = 0;

  Widget currentScreen = const HomePage();

  void changeSelectedValue(int selectedValue) {
    navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          currentScreen =  HomePage();
          break;
        }
      case 1:
        {
          currentScreen =  ChatPage();
          break;
        }
      case 2:
        {
          currentScreen = NotificationPage();
          break;
        }
      case 3:
        {
          currentScreen = SettingPage();
          break;
        }
    }
    update();
  }
}
