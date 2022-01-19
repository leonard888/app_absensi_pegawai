// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      page: json['page'] as int?,
      pageSize: json['pageSize'] as int?,
      pageCount: json['pageCount'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'pageCount': instance.pageCount,
      'total': instance.total,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'pagination': instance.pagination.toJson(),
    };

ErrorData _$ErrorDataFromJson(Map<String, dynamic> json) => ErrorData(
      status: json['status'] as int,
      name: json['name'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$ErrorDataToJson(ErrorData instance) => <String, dynamic>{
      'status': instance.status,
      'name': instance.name,
      'message': instance.message,
    };

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      url: json['url'] as String,
      hash: json['hash'] as String,
      ext: json['ext'] as String,
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'url': instance.url,
      'hash': instance.hash,
      'ext': instance.ext,
    };

MediaData _$MediaDataFromJson(Map<String, dynamic> json) => MediaData(
      id: json['id'] as int?,
      attributes: json['attributes'] == null
          ? null
          : Media.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MediaDataToJson(MediaData instance) => <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes?.toJson(),
    };
