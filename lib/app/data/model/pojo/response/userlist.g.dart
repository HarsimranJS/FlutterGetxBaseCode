// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..id = json['id'] as int
    ..email = json['email'] as String
    ..firstName = json['first_name'] as String
    ..lastName = json['last_name'] as String
    ..avatar = json['avatar'] as String;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
    };

UserList _$UserListFromJson(Map<String, dynamic> json) {
  return UserList()
    ..user = (json['data'] as List)
        ?.map(
            (e) => e == null ? null : User.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$UserListToJson(UserList instance) => <String, dynamic>{
      'data': instance.user,
    };
