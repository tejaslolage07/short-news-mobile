import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_api/news_api.dart';

/// {@template news_api}
/// Repo for News API
/// {@endtemplate}
class NewsApi {
  /// {@macro news_api}
  NewsApi({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseApiUrl = 'https://tnexta.com/short-news/api/v1';
  final http.Client _httpClient;

  Future<NewsApiResponse> getNewsArticles(
      {String? cursor, int count = 100}) async {
    final queryParams = {'count': '$count', cursor ?? 'cursor': cursor};
    print(queryParams);
    final request = Uri.https(
      _baseApiUrl,
      '/news',
      queryParams,
    );

    final response = await _httpClient.get(request);
    if (response.statusCode != 200) {
      throw Exception(response.toString());
    }

    final json = jsonDecode(response.body) as Map<String, dynamic>;

    if (!json.containsKey('data')) throw Exception('No data found');

    return NewsApiResponse.fromJson(json);
  }
}
