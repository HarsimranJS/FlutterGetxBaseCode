import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/details/details_controller.dart';
import 'package:getx_pattern/app/data/repository/resources_repository.dart';

class DetailsBinding implements Bindings{
  @override
  void dependencies() {
    // Get.lazyPut<DetailsController>(() {
    //   return DetailsController(
    //       repository:
    //           ResourceRepository());
    // });
    Get.put(DetailsController(repository:ResourceRepository()));
  }

}