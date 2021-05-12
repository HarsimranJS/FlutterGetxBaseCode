// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourcelist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resource _$ResourceFromJson(Map<String, dynamic> json) {
  return Resource()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..year = json['year'] as int
    ..color = json['color'] as String
    ..pantoneValue = json['pantone_value'] as String;
}

Map<String, dynamic> _$ResourceToJson(Resource instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'year': instance.year,
      'color': instance.color,
      'pantone_value': instance.pantoneValue,
    };

ResourceList _$ResourceListFromJson(Map<String, dynamic> json) {
  return ResourceList()
    ..resource = (json['data'] as List)
        ?.map((e) =>
            e == null ? null : Resource.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ResourceListToJson(ResourceList instance) =>
    <String, dynamic>{
      'data': instance.resource,
    };
