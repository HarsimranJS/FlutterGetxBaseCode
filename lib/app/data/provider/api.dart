
// const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

// import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:getx_pattern/app/data/model/pojo/response/resourcelist.dart';
import 'package:getx_pattern/app/data/model/pojo/response/userlist.dart';
// import 'package:getx_pattern/app/data/model/model.dart';
// import 'package:getx_pattern/app/data/model/pojo/response/posts.dart';
// import 'package:getx_pattern/app/data/model/pojo/response/userlist.dart';
// import 'package:meta/meta.dart';

// const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

class MyApiClient {

  static const String _baseUrl = 'https://reqres.in/';
  static const String _USERS = '/api/users?page=2';
  static const String _RESOURCE = '/api/unknown';
  

Dio _dio;

  MyApiClient(){
    BaseOptions dioOptions = BaseOptions();
      dioOptions.baseUrl = MyApiClient._baseUrl;

    _dio = Dio(dioOptions);

      _dio.interceptors.add(InterceptorsWrapper(
          onRequest:(RequestOptions options) async{
            // DioLogger.onSend(TAG, options);
            print(options);
            return options;
          },
          onResponse: (Response response){
            // DioLogger.onSuccess(TAG, response);
            print(response);
            return response;
          },
          onError: (DioError error){
            // DioLogger.onError(TAG, error);
            print(error);
            return error;
          }
      ));
    
  }

Future getPosts() async {
  try {
    Response response = await _dio.get(MyApiClient._USERS);
    throwIfNoSuccess(response);
    print(response);
    return UserList.fromJson(response.data);
  } catch(_){ }
}

Future getResource() async {
  try {
    Response response = await _dio.get(MyApiClient._RESOURCE);
    throwIfNoSuccess(response);
    print(response);
    return ResourceList.fromJson(response.data);
  } catch(_){ }
}

  void throwIfNoSuccess(Response response) {
    if(response.statusCode < 200 || response.statusCode > 299) {
      throw new DioError(error: response);
    }
  }
}
