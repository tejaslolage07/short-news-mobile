// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:news_api/news_api.dart';

part 'news_api_response.g.dart';

@JsonSerializable()
class NewsApiResponse {
  const NewsApiResponse({
    required this.articles,
    required this.perPage,
    required this.path,
    required this.nextPageUrl,
    required this.prevPageUrl,
    required this.nextCursor,
    required this.prevCursor,
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
  final String path;
  @JsonKey(name: 'next_page_url')
  final String nextPageUrl;
  @JsonKey(name: 'prev_page_url')
  final String prevPageUrl;
}
