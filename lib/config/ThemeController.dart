import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Themecontroller extends GetxController{
  RxBool isDarkMode = false.obs;

  @override
  void onInit() {
    currentTheme();
    super.onInit();
  }
  // current theme setter
  void currentTheme() {
    isDarkMode.value = Get.isDarkMode;
  }

  void changeTheme() {
    isDarkMode.value = !isDarkMode.value;
    if(isDarkMode.value){
      Get.changeThemeMode(ThemeMode.dark);
    }else{
      Get.changeThemeMode(ThemeMode.light);
    }
  }
}

