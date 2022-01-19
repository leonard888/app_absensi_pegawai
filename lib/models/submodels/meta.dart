import 'package:app_presensi_pegawai/services/constants.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meta.g.dart';

@JsonSerializable()
class Pagination {
  int? page, pageSize, pageCount, total;

  Pagination({this.page, this.pageSize, this.pageCount, this.total});

  factory Pagination.fromJson(Map<String, dynamic> data) =>
      _$PaginationFromJson(data);
  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Meta {
  Pagination pagination;

  Meta({required this.pagination});

  factory Meta.fromJson(Map<String, dynamic> data) => _$MetaFromJson(data);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

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
class Media {
  String url, hash, ext;
  Media({required this.url, required this.hash, required this.ext});

  factory Media.fromJson(Map<String, dynamic> data) => _$MediaFromJson(data);
  Map<String, dynamic> toJson() => _$MediaToJson(this);

  String getLink(String size) => '$BASE_URL/uploads/${size}_$hash$ext';
}

@JsonSerializable(explicitToJson: true)
class MediaData {
  int? id;
  Media? attributes;

  MediaData({this.id, this.attributes});

  factory MediaData.fromJson(Map<String, dynamic> data) =>
      _$MediaDataFromJson(data);
  Map<String, dynamic> toJson() => _$MediaDataToJson(this);
}
