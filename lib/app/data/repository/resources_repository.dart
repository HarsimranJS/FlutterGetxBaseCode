import 'package:get/get.dart';
import 'package:getx_pattern/app/data/provider/api.dart';

class ResourceRepository {
  final MyApiClient apiClient= Get.put(MyApiClient());

  ResourceRepository();

  getResources() {
    return apiClient.getResource();
  }
}