import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class ErrorData {
  int status;
  String name, message;

  ErrorData({required this.status, required this.name, required this.message});
  factory ErrorData.fromJson(Map<String, dynamic> data) =>
      _$ErrorDataFromJson(data);
  Map<String, dynamic> toJson() => _$ErrorDataToJson(this);
}

@JsonSerializable()
class User {
  String username, email;
  int? id;
  String? createdAt, updatedAt, provider;
  bool? confirmed, blocked;

  User({
    required this.username,
    required this.email,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.provider,
    this.confirmed,
    this.blocked,
  });

  factory User.fromJson(Map<String, dynamic> data) => _$UserFromJson(data);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserAuth {
  String? jwt;
  User? user;
  ErrorData? error;

  UserAuth({this.jwt, this.user, this.error});

  factory UserAuth.fromJson(Map<String, dynamic> data) =>
      _$UserAuthFromJson(data);
  Map<String, dynamic> toJson() => _$UserAuthToJson(this);
}
