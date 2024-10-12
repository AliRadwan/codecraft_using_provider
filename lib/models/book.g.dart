// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      pageCount: (json['pageCount'] as num?)?.toInt() ?? 0,
      publishedDate: json['published_date'] == null
          ? null
          : DateTime.parse(json['published_date'] as String),
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'pageCount': instance.pageCount,
      'published_date': instance.publishedDate?.toIso8601String(),
    };
