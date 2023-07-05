import 'package:news_api/news_api.dart';
import 'package:news_repository/news_repository.dart';

/// {@template news_repository}
/// Repo for News API
/// {@endtemplate}
class NewsRepository {
  /// {@macro news_repository}
  NewsRepository({NewsApiCLient? newsApiCLient})
      : _newsApiCLient = newsApiCLient ?? NewsApiCLient();
  final NewsApiCLient? _newsApiCLient;

  Future<NewsArticles> getNewsArticles(
      {String? cursor, int count = 100}) async {
    final newsApiResponse = await _newsApiCLient!.getNewsArticles(
      cursor: cursor,
      count: count,
    );
    return NewsArticles(
      articles: newsApiResponse.articles,
      nextCursor: newsApiResponse.nextCursor,
      prevCursor: newsApiResponse.prevCursor,
      perPage: newsApiResponse.perPage,
    );
  }
}
