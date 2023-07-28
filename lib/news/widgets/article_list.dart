import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:short_news_mobile/news/bloc/news_articles_bloc.dart';
import 'package:short_news_mobile/news/widgets/article.dart';

class ArticleList extends StatefulWidget {
  const ArticleList({super.key});

  @override
  State<ArticleList> createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

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
      color: Theme.of(context).colorScheme.onPrimary, // TO CHANGE
      onRefresh: () async => addRefreshEvent(stateProvider),
      child: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          if (index < stateProvider.state.newsArticles.articles.length) {
            final article = stateProvider.state.newsArticles.articles[index];
            return ArticleWidget(article, pageController);
          }
          if (index == stateProvider.state.newsArticles.articles.length &&
              (stateProvider.state.newsArticles.nextCursor == null ||
                  stateProvider.state.newsArticles.nextCursor == '')) {
            return Center(
              child: Text(localization.endOfListText,
                  style: Theme.of(context).textTheme.bodyLarge),
            );
          }
          addFetchEvent(
            stateProvider,
            cursor: stateProvider.state.newsArticles.nextCursor ?? '',
          );
          return Center(
              child: CircularProgressIndicator(
            color: Theme.of(context).colorScheme.onPrimary,
          ));
        },
        itemCount: stateProvider.state.newsArticles.articles.length + 1,
      ),
    );
  }
}
