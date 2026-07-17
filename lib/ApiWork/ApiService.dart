import 'package:get/get.dart';


class ApiService extends GetConnect{
  Future<Response> getData () async {
    var response = await get("https://dummyjson.com/products");
    return response;
  }
}