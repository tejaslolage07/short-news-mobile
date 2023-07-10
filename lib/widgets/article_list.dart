import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:short_news_mobile/news/cubit/news_articles_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:short_news_mobile/widgets/article.dart';

class ArticleList extends StatelessWidget {
  const ArticleList({super.key});
  @override
  Widget build(BuildContext context) {
    final stateProvider = BlocProvider.of<NewsArticlesCubit>(context);
    final localization = AppLocalizations.of(context)!;
    return RefreshIndicator(
      onRefresh: () => stateProvider.fetchNewsArticles(count: 100),
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
