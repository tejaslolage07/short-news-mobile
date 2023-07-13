import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart' as http;
import 'package:news_api/news_api.dart';

/// {@template news_api}
/// Repo for News API Client
/// {@endtemplate}
class NewsApiClient {
  /// {@macro news_api}
  NewsApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseApiUrl = 'tnexta.com';
  final http.Client _httpClient;

  Future<NewsApiResponse> getNewsArticles({
    String? cursor,
    int count = 100,
  }) async {
    cursor ??= '';
    final url = Uri(
      scheme: 'https',
      host: _baseApiUrl,
      path: '/short-news/api/v1/news',
      queryParameters: {'cursor': cursor, 'count': count.toString()},
    );

    final response = await _httpClient.get(url);
    if (response.statusCode != 200) {
      throw Exception(response.toString());
    }

    final json = jsonDecode(response.body) as Map<String, dynamic>;

    if (!json.containsKey('data')) throw Exception('No data found');

    return NewsApiResponse.fromJson(json);
  }
}
