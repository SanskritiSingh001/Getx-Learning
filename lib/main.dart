import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_project/ApiWork/ApiWorkPage.dart';
import 'package:getx_project/Homepage.dart';

import 'package:getx_project/MultiLanguage/MultiLanguageController.dart';
import 'package:getx_project/MultiLanguage/Translations.dart';
import 'package:getx_project/config/theme.dart';
import 'package:getx_project/config/ThemeController.dart';
import 'package:getx_project/pages/NoteApp/NoteApp.dart';
import 'package:getx_project/pages/NoteApp/note_model1.dart';
import 'package:getx_project/pages/Routing/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  Get.put(Themecontroller());
  Get.put(MultiLanguagecontroller());

  final MultiLanguagecontroller languageController = Get.find();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,

      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,

      initialRoute: "/",
      getPages: pages,

      translations: AppTranslations(),
      locale: languageController.currentLanguage.value,
      fallbackLocale: const Locale('en', 'US'),
    ),
  );
}