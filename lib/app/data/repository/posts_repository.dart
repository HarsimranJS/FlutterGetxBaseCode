import 'package:get/get.dart';
import 'package:getx_pattern/app/data/provider/api.dart';
import 'package:meta/meta.dart';

class MyRepository {
  final MyApiClient apiClient= Get.put(MyApiClient());

  MyRepository();

  getPosts() {
    return apiClient.getPosts();
  }

  // getId(id) {
  //   return apiClient.getId(id);
  // }



}
