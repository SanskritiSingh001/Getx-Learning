import 'package:get/get.dart';

class CounterController extends GetxController{
  RxInt number = 0.obs;

  void increment() {
    number.value++;
    update();
  }
@override
  void onInit() {
    super.onInit();
    print("controller initilized");
  }
  @override
  void onReady() {
    super.onReady();
    print("ui is ready");
  }
  @override
  void onClose() {
    print("controller closed");
    super.dispose();
  }
}