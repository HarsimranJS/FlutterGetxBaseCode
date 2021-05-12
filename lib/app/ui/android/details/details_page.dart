import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/details/details_controller.dart';
import 'package:getx_pattern/app/controller/home/home_controller.dart';
import 'package:getx_pattern/app/ui/android/widgets/loading_widget.dart';

class DetailsPage extends GetView<DetailsController> {

// int id;
//   String name;
//   int year;
//   String color;
//   String pantoneValue;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("secondPage".tr),),
      body: Container(
        child: GetX<DetailsController>(
            initState: (state) { Get.find<DetailsController>().getResources() ;},
            builder: (_) {
              return            
              _.resourceList.length < 1
              ? LoadingWidget()
              :
              ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    // tileColor: Color(),
                    title: Text("${_.resourceList[index].name} ${_.resourceList[index].year}" ?? 'a'),
                    subtitle: Text("${_.resourceList[index].pantoneValue}" ?? 'b'),
                    // onTap: ()=> _.details(_.postList[index]),
                  );
                },
                itemCount: _.resourceList.length,
              );
            }),
      ),
    );
  }
}
