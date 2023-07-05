// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:news_api/news_api.dart';

part 'news_articles.g.dart';

@JsonSerializable()
class NewsArticles {
  const NewsArticles({
    required this.articles,
    required this.perPage,
    this.nextCursor,
    this.prevCursor,
  });

  factory NewsArticles.fromJson(Map<String, dynamic> json) =>
      _$NewsArticlesFromJson(json);

  Map<String, dynamic> toJson() => _$NewsArticlesToJson(this);

  @JsonKey(name: 'data')
  final List<NewsArticle> articles;
  @JsonKey(name: 'next_cursor')
  final String? nextCursor;
  @JsonKey(name: 'prev_cursor')
  final String? prevCursor;
  @JsonKey(name: 'per_page')
  final int perPage;

  @override
  List<Object> get props => [articles, nextCursor!, prevCursor!, perPage];
}
