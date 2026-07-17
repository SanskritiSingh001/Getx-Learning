import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../config/ThemeController.dart';

class ThemeChange extends StatelessWidget {
  const ThemeChange({super.key});

  @override
  Widget build(BuildContext context) {
    Themecontroller themecontroller = Get.put(Themecontroller());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Theme change",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              themecontroller.changeTheme();
            },
            child:Obx(
                ()=>themecontroller.isDarkMode.value
                    ?Text("Switch to light theme")
                    :Text("Switch to dark theme"),
                ),
            ),
        ),
      );
  }
}
