import 'package:app_presensi_pegawai/services/constants.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class Avatar {
  String url, hash, ext;
  Avatar({required this.url, required this.hash, required this.ext});

  factory Avatar.fromJson(Map<String, dynamic> data) => _$AvatarFromJson(data);
  Map<String, dynamic> toJson() => _$AvatarToJson(this);

  String getLink(String size) => '$BASE_URL/uploads/${size}_$hash$ext';
}

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
  });

  String? username, email, provider;
  bool? confirmed, blocked;
  DateTime? createdAt, updatedAt;
  Avatar? avatar;

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
