import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:short_news_mobile/news/cubit/news_articles_cubit.dart';
import 'package:news_repository/news_repository.dart';
import 'package:short_news_mobile/widgets/%20news_articles_app_bar.dart';
import 'package:short_news_mobile/widgets/article_list.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NewsArticlesPage extends StatelessWidget {
  const NewsArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsArticlesCubit(context.read<NewsRepository>()),
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
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    return BlocBuilder<NewsArticlesCubit, NewsArticlesState>(
      builder: (context, state) {
        switch (state.status) {
          case NewsArticlesStatus.failure:
            return Center(
              child: Text(localizations.failedToLoadArticles),
            );
          case NewsArticlesStatus.success:
            return ArticleList();
          case NewsArticlesStatus.initial:
            context.read<NewsArticlesCubit>().fetchNewsArticles(count: 100);
            return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
