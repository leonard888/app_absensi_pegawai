import 'package:json_annotation/json_annotation.dart';

part 'office.g.dart';

@JsonSerializable()
class OfficeAttributes {
  OfficeAttributes({
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  String name;
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
