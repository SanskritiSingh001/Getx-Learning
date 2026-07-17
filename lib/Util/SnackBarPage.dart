import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarpage extends StatelessWidget {
  const SnackBarpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.snackbar("this is title", "this is message",
                      animationDuration: Duration(seconds: 3),
                    backgroundColor: Colors.grey,
                    isDismissible: true,
                    dismissDirection: DismissDirection.down,
                    icon: Icon(Icons.home),
                    mainButton: TextButton(
                        onPressed: () {},
                        child: Text("Click"),
                    ),
                    snackPosition: SnackPosition.BOTTOM,
                  );
                },
                child: Text("Show Snack Bar"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Delete item",
                );
                // Get.rawSnackbar(
                //   message: "this is raw snackbar",
                //   icon: Icon(Icons.home),
                // );
              },
                child: Text("show raw snackbar"),
                )
          ],
        ),
      ),
    );
  }
}
