import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

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
  String jwt;
  User user;

  UserAuth({required this.jwt, required this.user});

  factory UserAuth.fromJson(Map<String, dynamic> data) =>
      _$UserAuthFromJson(data);
  Map<String, dynamic> toJson() => _$UserAuthToJson(this);
}
