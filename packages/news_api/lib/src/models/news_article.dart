// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:news_api/src/models/news_website.dart';

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
    required this.articleS3Filename,
    required this.fetchedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) =>
      _$NewsArticleFromJson(json);

  Map<String, dynamic> toJson() => _$NewsArticleToJson(this);

  final int id;
  final String shortNews;
  final String headline;
  final String? author;
  @JsonKey(name: 'news_website_id')
  final int newsWebsiteId;
  @JsonKey(name: 'article_url')
  final String articleUrl;
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @JsonKey(name: 'published_at')
  final DateTime publishedAt;
  @JsonKey(name: 'fetched_at')
  final DateTime fetchedAt;
  @JsonKey(name: 'article_s3_filename')
  final String? articleS3Filename;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  final String? source;
  final List<String>? country;
  final String? language;
  final List<String>? category;
  final List<String>? keywords;
  @JsonKey(name: 'news_website')
  final NewsWebsite newsWebsite;
}
