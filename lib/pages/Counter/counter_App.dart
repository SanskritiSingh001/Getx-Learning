import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/Homepage.dart';

import 'Counter_Controller.dart';

class CounterApp extends StatelessWidget {
  CounterApp({super.key});


  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.put(CounterController());
    CounterController counterController1 = Get.find<CounterController>();
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            Get.to(HomePage());
          },
          icon: Icon(Icons.home,color: Colors.white),
          )
        ],
        centerTitle: true,
        title: const Text("Counter App",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.deepPurple,width: 3)
          ),
          // child: Obx(
          //       () => Text(
          //          "Counter Value: ${counterController.number.value}",
          //        style: const TextStyle(fontSize: 30),
          //      ),
          // ),another way to do some thing
          child: GetBuilder<CounterController>(
              builder: (ctrl) => Text("Counter Value: ${ctrl.number}",
                  style: const TextStyle(fontSize: 30),
              )
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
          print(counterController.number.value);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}