import 'package:news_api/news_api.dart' hide NewsArticle, NewsWebsite;
import 'package:news_repository/news_repository.dart';

/// {@template news_repository}
/// Repo for News API
/// {@endtemplate}
class NewsRepository {
  /// {@macro news_repository}
  NewsRepository({NewsApiClient? newsApiCLient})
      : _newsApiCLient = newsApiCLient ?? NewsApiClient();
  final NewsApiClient _newsApiCLient;

  Future<NewsArticles> getNewsArticles(
      {String? cursor, int count = 100}) async {
    final newsApiResponse = await _newsApiCLient.getNewsArticles(
      cursor: cursor,
      count: count,
    );

    final List<NewsArticle> articles = [];

    newsApiResponse.articles.map((article) {
      articles.add(
        NewsArticle(
          id: article.id,
          shortNews: article.shortNews,
          headline: article.headline,
          author: article.author ?? '',
          newsWebsiteId: article.newsWebsiteId,
          articleUrl: article.articleUrl,
          imageUrl: article.imageUrl ?? '',
          publishedAt: article.publishedAt,
          source: article.source ?? '',
          country: article.country ?? [],
          language: article.language ?? '',
          category: article.category ?? [],
          keywords: article.keywords ?? [],
          newsWebsite: NewsWebsite(
            id: article.newsWebsite.id,
            website: article.newsWebsite.website,
          ),
        ),
      );
    });

    return NewsArticles(
      articles: articles,
      nextCursor: newsApiResponse.nextCursor,
      prevCursor: newsApiResponse.prevCursor,
      perPage: newsApiResponse.perPage,
    );
  }
}
