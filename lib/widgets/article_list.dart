import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:short_news_mobile/news/cubit/news_articles_cubit.dart';

class ArticleList extends StatelessWidget {
  ArticleList({super.key});

  @override
  Widget build(BuildContext context) {
    final stateProvider = BlocProvider.of<NewsArticlesCubit>(context);
    return RefreshIndicator(
      onRefresh: () => stateProvider.fetchNewsArticles(count: 100),
      child: PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          if (index < stateProvider.state.newsArticles.articles.length) {
            final article = stateProvider.state.newsArticles.articles[index];
            return Container(
              child: Text('${article.id}'),
              color: Color(Random().nextInt(0xffffffff)),
              height: MediaQuery.of(context).size.height,
            );
          } else if (index ==
                  stateProvider.state.newsArticles.articles.length &&
              (stateProvider.state.newsArticles.nextCursor == null ||
                  stateProvider.state.newsArticles.nextCursor == '')) {
            return const Center(
              child: Text('Hit Refresh to fetch the latest articles'),
            );
          } else {
            stateProvider.fetchNewsArticles(
                cursor: stateProvider.state.newsArticles.nextCursor,
                count: 100);
            return const Center(child: CircularProgressIndicator());
          }
        },
        itemCount: stateProvider.state.newsArticles.articles.length + 1,
      ),
    );
  }
}
