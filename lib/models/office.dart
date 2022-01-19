import 'package:app_presensi_pegawai/models/submodels/meta.dart';
import 'package:app_presensi_pegawai/models/submodels/office.dart';
import 'package:json_annotation/json_annotation.dart';

part 'office.g.dart';

@JsonSerializable(explicitToJson: true)
class OfficeFindMany {
  OfficeFindMany({
    this.data,
    this.error,
    required this.meta,
  });

  List<OfficeData>? data;
  Meta meta;
  ErrorData? error;

  factory OfficeFindMany.fromJson(Map<String, dynamic> data) =>
      _$OfficeFindManyFromJson(data);
  Map<String, dynamic> toJson() => _$OfficeFindManyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OfficeFindOne {
  OfficeFindOne({
    this.data,
    this.error,
    required this.meta,
  });

  OfficeData? data;
  Meta meta;
  ErrorData? error;

  factory OfficeFindOne.fromJson(Map<String, dynamic> data) =>
      _$OfficeFindOneFromJson(data);
  Map<String, dynamic> toJson() => _$OfficeFindOneToJson(this);
}
