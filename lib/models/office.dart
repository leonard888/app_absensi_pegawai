import 'package:app_presensi_pegawai/models/submodels/meta.dart';
import 'package:app_presensi_pegawai/models/submodels/office.dart';
import 'package:json_annotation/json_annotation.dart';

part 'office.g.dart';

@JsonSerializable(explicitToJson: true)
class OfficeRequest {
  OfficeRequest({
    this.data,
    required this.meta,
  });

  List<OfficeData>? data;
  Meta meta;

  factory OfficeRequest.fromJson(Map<String, dynamic> data) =>
      _$OfficeRequestFromJson(data);
  Map<String, dynamic> toJson() => _$OfficeRequestToJson(this);
}
