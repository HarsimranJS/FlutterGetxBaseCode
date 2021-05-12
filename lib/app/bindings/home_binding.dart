import 'package:getx_pattern/app/controller/home/home_controller.dart';
import 'package:getx_pattern/app/data/repository/posts_repository.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(
          repository:
              MyRepository());
    });
  }
}
