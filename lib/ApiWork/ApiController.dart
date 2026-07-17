 import 'package:get/get.dart';
import 'package:getx_project/ApiWork/ApiService.dart';

class ApiController extends GetxController{
  final ApiService apiService = ApiService();

  RxList dataList = [].obs;
  Rx isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    getProductData();
  }

  Future<void> getProductData() async{
    isLoading.value = true;
    var data = await apiService.getData();
    if(data.statusCode == 200){
      dataList.value = data.body;
      print(dataList);
    }else{
      print("error fetching data: ${data.statusText}");
    }
    isLoading.value=false;
  }
}