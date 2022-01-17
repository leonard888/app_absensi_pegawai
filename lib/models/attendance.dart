import 'package:app_presensi_pegawai/models/submodels/attendance.dart';
import 'package:app_presensi_pegawai/models/submodels/meta.dart';

import 'package:json_annotation/json_annotation.dart';

part 'attendance.g.dart';

@JsonSerializable(explicitToJson: true)
class AttendanceRequest {
  AttendanceRequest({
    this.data,
    required this.meta,
  });

  List<Attendance>? data;
  Meta meta;

  factory AttendanceRequest.fromJson(Map<String, dynamic> data) =>
      _$AttendanceRequestFromJson(data);
  Map<String, dynamic> toJson() => _$AttendanceRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Attendance {
  Attendance({
    required this.id,
    this.attributes,
  });

  int id;
  AttendanceAttributes? attributes;

  factory Attendance.fromJson(Map<String, dynamic> data) =>
      _$AttendanceFromJson(data);
  Map<String, dynamic> toJson() => _$AttendanceToJson(this);
}
