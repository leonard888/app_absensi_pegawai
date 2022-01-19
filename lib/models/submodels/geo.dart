import 'package:json_annotation/json_annotation.dart';

part 'geo.g.dart';

@JsonSerializable(explicitToJson: true)
class Geo {
  Geo({
    this.id,
    required this.lat,
    required this.lng,
  });

  int? id;
  String lat;
  String lng;

  factory Geo.fromJson(Map<String, dynamic> data) => _$GeoFromJson(data);
  Map<String, dynamic> toJson() => _$GeoToJson(this);
}
