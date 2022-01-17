// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      id: json['id'] as int?,
      province: json['province'] as String?,
      city: json['city'] as String?,
      district: json['district'] as String?,
      postal: json['postal'] as String?,
      street: json['street'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'id': instance.id,
      'province': instance.province,
      'city': instance.city,
      'district': instance.district,
      'postal': instance.postal,
      'street': instance.street,
    };
