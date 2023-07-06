import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart' as http;
import 'package:news_api/news_api.dart';

/// {@template news_api}
/// Repo for News API Client
/// {@endtemplate}
class NewsApiCLient {
  /// {@macro news_api}
  NewsApiCLient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseApiUrl = 'https://tnexta.com/short-news/api/v1';
  final http.Client _httpClient;

  Future<NewsApiResponse> getNewsArticles(
      {String? cursor, int count = 100}) async {
    var url = '$_baseApiUrl/news?cursor=$cursor&count=$count';

    final response = await _httpClient.get(Uri.parse(url));
    if (response.statusCode != 200) {
      throw Exception(response.toString());
    }

    final json = jsonDecode(response.body) as Map<String, dynamic>;

    if (!json.containsKey('data')) throw Exception('No data found');

    return NewsApiResponse.fromJson(json);
  }
}
