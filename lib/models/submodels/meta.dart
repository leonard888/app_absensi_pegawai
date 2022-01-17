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
