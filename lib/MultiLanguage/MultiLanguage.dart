import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/MultiLanguage/MultiLanguageController.dart';

class MultiLanuagePage extends StatelessWidget {
  const MultiLanuagePage({super.key});

  @override
  Widget build(BuildContext context) {
    MultiLanguagecontroller controller = Get.put(MultiLanguagecontroller());
    return Scaffold(
      appBar: AppBar(title: Text("multi language page",),
      centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(children: [Text("title".tr)]),
            Row(children: [Text("welcome".tr)]),
            Row(
              children: [
                Text("Name : ",style: TextStyle(fontSize: 20),),
                Text('name'.tr,style: TextStyle(fontSize: 20),),
              ],
            ),
            Row(
              children: [
                Text("Position :",style: TextStyle(fontSize: 20),),
                Text("position".tr,style: TextStyle(fontSize: 20),),
              ],
            ),
            Row(
              children: [
                Text("Experiance :",style: TextStyle(fontSize: 20),),
                Text("experiance".tr,style: TextStyle(fontSize: 20),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {
                  controller.changeLanguage("hi");
                },
                   child: Text("Hindi")),
                ElevatedButton(onPressed: () {
                  controller.changeLanguage("en");
                }, child: Text("Eng")),
              ],
            )
          ],
        ),
      )
    );
  }
}
