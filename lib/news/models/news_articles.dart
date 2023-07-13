// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:news_repository/news_repository.dart' as newsRepository;
import 'news_article.dart';
import 'news_website.dart';

part 'news_articles.g.dart';

@JsonSerializable()
class NewsArticles extends Equatable {
  const NewsArticles({
    required this.articles,
    required this.perPage,
    this.nextCursor,
    this.prevCursor,
  });

  factory NewsArticles.fromJson(Map<String, dynamic> json) =>
      _$NewsArticlesFromJson(json);

  Map<String, dynamic> toJson() => _$NewsArticlesToJson(this);

  factory NewsArticles.fromRepository(
      newsRepository.NewsArticles articlesList) {
    final List<NewsArticle> newsArticles = [];

    articlesList.articles.map((article) {
      newsArticles.add(
        NewsArticle(
          id: article.id,
          shortNews: article.shortNews,
          headline: article.headline,
          author: article.author,
          newsWebsiteId: article.newsWebsiteId,
          articleUrl: article.articleUrl,
          imageUrl: article.imageUrl,
          publishedAt: article.publishedAt,
          source: article.source,
          country: article.country,
          language: article.language,
          category: article.category,
          keywords: article.keywords,
          newsWebsite: NewsWebsite(
            id: article.newsWebsite.id,
            website: article.newsWebsite.website,
          ),
        ),
      );
    });
    return NewsArticles(
      articles: newsArticles,
      nextCursor: articlesList.nextCursor,
      prevCursor: articlesList.prevCursor,
      perPage: articlesList.perPage,
    );
  }

  static NewsArticles empty = NewsArticles(
    articles: [],
    nextCursor: null,
    prevCursor: null,
    perPage: 0,
  );

  @JsonKey(name: 'data')
  final List<NewsArticle> articles;
  @JsonKey(name: 'next_cursor')
  final String? nextCursor;
  @JsonKey(name: 'prev_cursor')
  final String? prevCursor;
  @JsonKey(name: 'per_page')
  final int perPage;

  @override
  List<Object> get props =>
      [articles, nextCursor ?? '', prevCursor ?? '', perPage];
}
