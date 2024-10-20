import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';
@freezed
   abstract class Book with _$Book{
  const factory Book({
    required String id,
    required String title,
    required String author,
    @Default(0) int pageCount,
    @JsonKey(name: 'published_date') DateTime? publishedDate,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json)=> _$BookFromJson(json);

}