import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:short_news_mobile/news/bloc/news_articles_bloc.dart';
import 'package:short_news_mobile/news/widgets/article.dart';

class ArticleList extends StatelessWidget {
  const ArticleList({super.key});

  void addFetchEvent(NewsArticleBloc stateProvider,
      {String cursor = '', int count = 100}) {
    stateProvider.add(
      NewsArticlesFetch(
        cursor: cursor,
        count: count,
      ),
    );
  }

  void addRefreshEvent(NewsArticleBloc stateProvider) {
    stateProvider.add(
      NewsArticlesRefresh(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    final stateProvider = BlocProvider.of<NewsArticleBloc>(context);
    return RefreshIndicator(
      onRefresh: () async => addRefreshEvent(stateProvider),
      child: PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          if (index < stateProvider.state.newsArticles.articles.length) {
            final article = stateProvider.state.newsArticles.articles[index];
            return ArticleWidget(article);
          } else if (index ==
                  stateProvider.state.newsArticles.articles.length &&
              (stateProvider.state.newsArticles.nextCursor == null ||
                  stateProvider.state.newsArticles.nextCursor == '')) {
            return Center(
              child: Text(localization.endOfListText),
            );
          } else {
            addFetchEvent(
              stateProvider,
              cursor: stateProvider.state.newsArticles.nextCursor ?? '',
            );
            return const Center(child: CircularProgressIndicator());
          }
        },
        itemCount: stateProvider.state.newsArticles.articles.length + 1,
      ),
    );
  }
}
