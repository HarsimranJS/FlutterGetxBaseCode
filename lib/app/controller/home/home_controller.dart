import 'package:get/get.dart';
import 'package:getx_pattern/app/data/repository/posts_repository.dart';
import 'package:getx_pattern/app/routes/app_pages.dart';
import 'package:meta/meta.dart';

class HomeController extends GetxController {

  final MyRepository repository;
  HomeController({@required this.repository}) : assert(repository != null);

  
  final postsList = [].obs;
  // get postList => this._postsList.value;
  // set postList(value) => this._postsList.value = value;

  
  getAll(){
    repository.getPosts().then( 
      (data){ 
        this.postsList.assignAll(data.user);
        // this.postsList = data.user; 
        } );
  }
}