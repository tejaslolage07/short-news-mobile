import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_repository/news_repository.dart';
import 'package:short_news_mobile/news/bloc/news_articles_bloc.dart';

import '../widgets/ news_articles_app_bar.dart';
import '../widgets/article_list.dart';

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

class NewsArticlesView extends StatelessWidget {
  const NewsArticlesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsArticleBloc, NewsArticlesState>(
      builder: (context, state) {
        switch (state.status) {
          case NewsArticlesStatus.failure:
            return const Center(child: Text('Failed to fetch news articles'));
          case NewsArticlesStatus.success:
            return ArticleList();
          case NewsArticlesStatus.initial:
            context.read<NewsArticleBloc>().add(
                  const NewsArticlesFetch(count: 100),
                );
            return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
