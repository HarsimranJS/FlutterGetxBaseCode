import 'package:json_annotation/json_annotation.dart';

part 'userlist.g.dart';

@JsonSerializable()
class User{

  User();
  
  @JsonKey(name:"id")
  int id;
  
  @JsonKey(name:"email")
  String email;

  @JsonKey(name: "first_name")
  String firstName;

  @JsonKey(name: "last_name")
  String lastName;

  @JsonKey(name: "avatar")
  String avatar;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class UserList{

UserList();

@JsonKey(name:"data")
List<User> user;

factory UserList.fromJson(Map<String, dynamic> json) => _$UserListFromJson(json);
  Map<String, dynamic> toJson() => _$UserListToJson(this);
}
