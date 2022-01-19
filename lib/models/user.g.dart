// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAuth _$UserAuthFromJson(Map<String, dynamic> json) => UserAuth(
      jwt: json['jwt'] as String?,
      user: json['user'] == null
          ? null
          : UserAttributes.fromJson(json['user'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : ErrorData.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserAuthToJson(UserAuth instance) => <String, dynamic>{
      'jwt': instance.jwt,
      'user': instance.user?.toJson(),
      'error': instance.error?.toJson(),
    };
