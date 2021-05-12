import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/home/home_controller.dart';
import 'package:getx_pattern/app/routes/app_pages.dart';
import 'package:getx_pattern/app/ui/android/widgets/loading_widget.dart';

class HomePage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("homePageHeading".tr),actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Get.toNamed(Routes.DETAILS);
            },
          ),
        ],),
      body: Container(
        child: GetX<HomeController>(
            initState: (state) { Get.find<HomeController>().getAll() ;},
            builder: (_) {
              return 
              
              _.postsList.length < 1
              ? LoadingWidget()
              :
              ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network("${_.postsList[index].avatar}"),
                    title: Text("${_.postsList[index].firstName} ${_.postsList[index].lastName}" ?? 'a'),
                    subtitle: Text("${_.postsList[index].email}" ?? 'b'),
                    // onTap: ()=> _.details(_.postList[index]),
                  );
                },
                itemCount: _.postsList.length,
              );
            }),
      ),
    );
  }
}
