import 'package:app_presensi_pegawai/models/submodels/geo.dart';
import 'package:app_presensi_pegawai/models/submodels/office.dart';
import 'package:app_presensi_pegawai/models/submodels/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attendance.g.dart';

@JsonSerializable(explicitToJson: true)
class AttendanceAttributes {
  AttendanceAttributes({
    this.createdAt,
    this.updatedAt,
    this.status,
    this.user,
    this.location,
    this.office,
  });

  DateTime? createdAt;
  DateTime? updatedAt;
  String? status;
  User? user;
  Geo? location;
  Office? office;

  factory AttendanceAttributes.fromJson(Map<String, dynamic> data) =>
      _$AttendanceAttributesFromJson(data);
  Map<String, dynamic> toJson() => _$AttendanceAttributesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Office {
  Office({
    required this.data,
  });

  OfficeData data;

  factory Office.fromJson(Map<String, dynamic> data) => _$OfficeFromJson(data);
  Map<String, dynamic> toJson() => _$OfficeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User {
  User({
    this.data,
  });

  UserData? data;

  factory User.fromJson(Map<String, dynamic> data) => _$UserFromJson(data);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
