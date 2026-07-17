import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:getx_project/ApiWork/ApiController.dart';
import 'package:getx_project/ApiWork/ApiService.dart';

class ApiworkPage extends StatelessWidget {
  const ApiworkPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ApiController apiController = Get.put(ApiController());
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Api work",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Api call page")],
            ),
            Obx(
                  ()=>ElevatedButton(onPressed: () {
                      apiController.getProductData();
                      print("api service is clicked ");
                    }, child: apiController.isLoading.value
                        ? const CircularProgressIndicator()
                        : const Text("Get product data"),
                  ),
            ),
            Expanded(
                child:Obx(
                        ()=> ListView.builder(
                            itemCount: apiController.dataList.value.length,
                            itemBuilder: (context, index) => Container(
                              margin: const EdgeInsetsGeometry.all(8),
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Image.network(
                                    apiController.dataList[index]['image'],
                                    height: 80,
                                    width: 80,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Flexible(
                                            child: Text(
                                              "${apiController.dataList[index]['title']}",
                                              maxLines: 1,
                                            )),
                                        Text("${apiController.dataList[index]['price']}"),
                                        Text("${apiController.dataList[index]['category']}"),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                        ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
