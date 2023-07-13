import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:short_news_mobile/news/bloc/news_articles_bloc.dart';

import '../../widgets/ArticleList.dart';

class NewsArticlesView extends StatefulWidget {
  const NewsArticlesView({super.key});

  @override
  State<NewsArticlesView> createState() => _NewsArticlesViewState();
}

class _NewsArticlesViewState extends State<NewsArticlesView> {
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
