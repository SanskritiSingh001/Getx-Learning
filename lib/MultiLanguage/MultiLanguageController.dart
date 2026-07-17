import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MultiLanguagecontroller extends GetxController{
  Rx<Locale> currentLanguage = Locale('en','US').obs;

  void changeLanguage(String language) {
    if(language == "hi"){
      currentLanguage.value = const Locale('hi','IN');
    }else{
      currentLanguage.value = const Locale('en','US');
    }
    Get.updateLocale(currentLanguage.value);
  }
}