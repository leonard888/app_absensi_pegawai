// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttendanceAttributes _$AttendanceAttributesFromJson(
        Map<String, dynamic> json) =>
    AttendanceAttributes(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      status: json['status'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Geo.fromJson(json['location'] as Map<String, dynamic>),
      office: json['office'] == null
          ? null
          : Office.fromJson(json['office'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AttendanceAttributesToJson(
        AttendanceAttributes instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'status': instance.status,
      'user': instance.user?.toJson(),
      'location': instance.location?.toJson(),
      'office': instance.office?.toJson(),
    };

Office _$OfficeFromJson(Map<String, dynamic> json) => Office(
      data: OfficeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OfficeToJson(Office instance) => <String, dynamic>{
      'data': instance.data.toJson(),
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      data: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'data': instance.data?.toJson(),
    };
