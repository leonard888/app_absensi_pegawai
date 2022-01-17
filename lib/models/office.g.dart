// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'office.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfficeRequest _$OfficeRequestFromJson(Map<String, dynamic> json) =>
    OfficeRequest(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => OfficeData.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OfficeRequestToJson(OfficeRequest instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
    };
