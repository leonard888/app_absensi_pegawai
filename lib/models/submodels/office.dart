import 'package:app_presensi_pegawai/models/submodels/address.dart';
import 'package:app_presensi_pegawai/models/submodels/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'office.g.dart';

@JsonSerializable(explicitToJson: true)
class Cover {
  Cover({
    required this.data,
  });

  MediaData data;
  factory Cover.fromJson(Map<String, dynamic> data) => _$CoverFromJson(data);
  Map<String, dynamic> toJson() => _$CoverToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OfficeAttributes {
  OfficeAttributes({
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    this.phone,
    this.address,
    this.cover,
  });

  String name;
  String? phone;
  Address? address;
  Cover? cover;
  DateTime createdAt, updatedAt;

  factory OfficeAttributes.fromJson(Map<String, dynamic> data) =>
      _$OfficeAttributesFromJson(data);
  Map<String, dynamic> toJson() => _$OfficeAttributesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OfficeData {
  OfficeData({
    required this.id,
    required this.attributes,
  });

  int id;
  OfficeAttributes attributes;

  factory OfficeData.fromJson(Map<String, dynamic> data) =>
      _$OfficeDataFromJson(data);
  Map<String, dynamic> toJson() => _$OfficeDataToJson(this);
}
