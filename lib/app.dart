import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_repository/news_repository.dart';
import 'news/view/news_articles_page.dart';

class ShortNewsApp extends StatelessWidget {
  const ShortNewsApp({required NewsRepository newsRepository, super.key})
      : _newsRepository = newsRepository;

  final NewsRepository _newsRepository;
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _newsRepository,
      child: const ShortNewsAppView(),
    );
  }
}

class ShortNewsAppView extends StatelessWidget {
  const ShortNewsAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Short News',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NewsArticlesPage(),
    );
  }
}
