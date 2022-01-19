import 'package:app_presensi_pegawai/models/submodels/attendance.dart';
import 'package:app_presensi_pegawai/models/submodels/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class UserAttributes {
  UserAttributes({
    this.username,
    this.email,
    this.provider,
    this.confirmed,
    this.blocked,
    this.createdAt,
    this.updatedAt,
    this.avatar,
    this.attendances,
  });

  String? username, email, provider;
  bool? confirmed, blocked;
  DateTime? createdAt, updatedAt;
  Media? avatar;
  List<AttendanceAttributes>? attendances;

  factory UserAttributes.fromJson(Map<String, dynamic> data) =>
      _$UserAttributesFromJson(data);
  Map<String, dynamic> toJson() => _$UserAttributesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserData {
  UserData({
    required this.id,
    required this.attributes,
  });

  int id;
  UserAttributes attributes;

  factory UserData.fromJson(Map<String, dynamic> data) =>
      _$UserDataFromJson(data);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
