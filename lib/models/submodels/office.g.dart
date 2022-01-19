// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'office.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cover _$CoverFromJson(Map<String, dynamic> json) => Cover(
      data: MediaData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CoverToJson(Cover instance) => <String, dynamic>{
      'data': instance.data.toJson(),
    };

OfficeAttributes _$OfficeAttributesFromJson(Map<String, dynamic> json) =>
    OfficeAttributes(
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      phone: json['phone'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      cover: json['cover'] == null
          ? null
          : Cover.fromJson(json['cover'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OfficeAttributesToJson(OfficeAttributes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address?.toJson(),
      'cover': instance.cover?.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

OfficeData _$OfficeDataFromJson(Map<String, dynamic> json) => OfficeData(
      id: json['id'] as int,
      attributes:
          OfficeAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OfficeDataToJson(OfficeData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes.toJson(),
    };
