// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:news_repository/src/models/news_website.dart';

part 'news_article.g.dart';

@JsonSerializable()
class NewsArticle {
  const NewsArticle({
    required this.id,
    required this.shortNews,
    required this.headline,
    required this.author,
    required this.newsWebsiteId,
    required this.articleUrl,
    required this.imageUrl,
    required this.publishedAt,
    required this.source,
    required this.country,
    required this.language,
    required this.category,
    required this.keywords,
    required this.newsWebsite,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) =>
      _$NewsArticleFromJson(json);

  Map<String, dynamic> toJson() => _$NewsArticleToJson(this);

  final int id;
  final String shortNews;
  final String headline;
  final String author;
  @JsonKey(name: 'news_website_id')
  final int newsWebsiteId;
  @JsonKey(name: 'article_url')
  final String articleUrl;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey(name: 'published_at')
  final DateTime publishedAt;
  final String source;
  final List<String> country;
  final String language;
  final List<String> category;
  final List<String> keywords;
  @JsonKey(name: 'news_website')
  final NewsWebsite newsWebsite;
}
