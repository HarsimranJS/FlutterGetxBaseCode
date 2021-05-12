import 'package:get/get.dart';
import 'package:getx_pattern/app/data/repository/resources_repository.dart';
import 'package:meta/meta.dart';

class DetailsController extends GetxController {

  final ResourceRepository repository;
  DetailsController({@required this.repository}) : assert(repository != null);

final resourceList = [].obs;

getResources(){
    repository.getResources().then( 
      (data){ 
        this.resourceList.assignAll(data.resource);
        // this.postsList = data.user; 
        } );
  }

}