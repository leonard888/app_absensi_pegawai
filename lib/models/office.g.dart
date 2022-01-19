// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'office.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfficeFindMany _$OfficeFindManyFromJson(Map<String, dynamic> json) =>
    OfficeFindMany(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => OfficeData.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] == null
          ? null
          : ErrorData.fromJson(json['error'] as Map<String, dynamic>),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OfficeFindManyToJson(OfficeFindMany instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
      'error': instance.error?.toJson(),
    };

OfficeFindOne _$OfficeFindOneFromJson(Map<String, dynamic> json) =>
    OfficeFindOne(
      data: json['data'] == null
          ? null
          : OfficeData.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : ErrorData.fromJson(json['error'] as Map<String, dynamic>),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OfficeFindOneToJson(OfficeFindOne instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'meta': instance.meta.toJson(),
      'error': instance.error?.toJson(),
    };
