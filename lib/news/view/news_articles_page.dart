import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_repository/news_repository.dart';

import 'package:short_news_mobile/news/bloc/news_articles_bloc.dart';

import '../widgets/ news_articles_app_bar.dart';
import 'news_articles_view.dart';

class NewsArticlesPage extends StatelessWidget {
  const NewsArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsArticleBloc(
        newsRepository: context.read<NewsRepository>(),
      ),
      child: const Scaffold(
        appBar: ArticlesAppBar(),
        body: NewsArticlesView(),
      ),
    );
  }
}
