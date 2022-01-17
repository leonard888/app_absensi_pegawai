import 'package:json_annotation/json_annotation.dart';
part 'address.g.dart';

@JsonSerializable()
class Address {
  Address({
    this.id,
    this.province,
    this.city,
    this.district,
    this.postal,
    this.street,
  });

  int? id;
  String? province, city, district, postal, street;

  factory Address.fromJson(Map<String, dynamic> data) =>
      _$AddressFromJson(data);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
