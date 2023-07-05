// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:news_api/news_api.dart';

part 'news_api_response.g.dart';

@JsonSerializable()
class NewsApiResponse {
  const NewsApiResponse({
    required this.articles,
    required this.perPage,
    this.nextCursor,
    this.prevCursor,
  });
  factory NewsApiResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsApiResponseFromJson(json);

  @JsonKey(name: 'data')
  final List<NewsArticle> articles;
  @JsonKey(name: 'next_cursor')
  final String? nextCursor;
  @JsonKey(name: 'prev_cursor')
  final String? prevCursor;
  @JsonKey(name: 'per_page')
  final int perPage;
}
