// "id": 1,
//             "name": "cerulean",
//             "year": 2000,
//             "color": "#98B2D1",
//             "pantone_value": "15-4020"

import 'package:json_annotation/json_annotation.dart';

part 'resourcelist.g.dart';

@JsonSerializable()
class Resource{

  Resource();
  
  @JsonKey(name:"id")
  int id;
  
  @JsonKey(name:"name")
  String name;

  @JsonKey(name: "year")
  int year;

  @JsonKey(name: "color")
  String color;

  @JsonKey(name: "pantone_value")
  String pantoneValue;

  factory Resource.fromJson(Map<String, dynamic> json) => _$ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$ResourceToJson(this);
}

@JsonSerializable()
class ResourceList{

ResourceList();

@JsonKey(name:"data")
List<Resource> resource;

factory ResourceList.fromJson(Map<String, dynamic> json) => _$ResourceListFromJson(json);
  Map<String, dynamic> toJson() => _$ResourceListToJson(this);
}
