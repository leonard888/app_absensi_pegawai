// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttendanceRequest _$AttendanceRequestFromJson(Map<String, dynamic> json) =>
    AttendanceRequest(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Attendance.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AttendanceRequestToJson(AttendanceRequest instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
    };

Attendance _$AttendanceFromJson(Map<String, dynamic> json) => Attendance(
      id: json['id'] as int,
      attributes: json['attributes'] == null
          ? null
          : AttendanceAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AttendanceToJson(Attendance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes?.toJson(),
    };

AttendanceOfficeAttributes _$AttendanceOfficeAttributesFromJson(
        Map<String, dynamic> json) =>
    AttendanceOfficeAttributes(
      id: json['id'] as int?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      status: json['status'] as String?,
      office: json['office'] == null
          ? null
          : OfficeAttributes.fromJson(json['office'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AttendanceOfficeAttributesToJson(
        AttendanceOfficeAttributes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'status': instance.status,
      'office': instance.office?.toJson(),
    };
