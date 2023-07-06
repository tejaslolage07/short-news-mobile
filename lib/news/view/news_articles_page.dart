import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:short_news_mobile/news/cubit/news_articles_cubit.dart';
import 'package:news_repository/news_repository.dart';

class NewsArticlesPage extends StatelessWidget {
  const NewsArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsArticlesCubit(context.read<NewsRepository>()),
      child: const NewsArticlesView(),
    );
  }
}

class NewsArticlesView extends StatelessWidget {
  const NewsArticlesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<NewsArticlesCubit>().fetchNewsArticles(count: 1);
        },
        child: const Icon(Icons.refresh),
      ),
      body: BlocBuilder<NewsArticlesCubit, NewsArticlesState>(
        builder: (context, state) {
          switch (state.status) {
            case NewsArticlesStatus.failure:
              return const Center(child: Text('failed to fetch news articles'));
            case NewsArticlesStatus.success:
              return Column(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      context.read<NewsArticlesCubit>().fetchNewsArticles(
                          cursor: state.newsArticles.nextCursor, count: 1);
                    },
                    child: const Icon(Icons.add),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          title:
                              Text(state.newsArticles.articles[index].headline),
                          subtitle: Text(
                              state.newsArticles.articles[index].shortNews),
                        );
                      },
                      itemCount: state.newsArticles.articles.length,
                    ),
                  ),
                ],
              );
            case NewsArticlesStatus.loading:
              return const Center(child: CircularProgressIndicator());
            default:
              context.read<NewsArticlesCubit>().fetchNewsArticles(
                  cursor: state.newsArticles.nextCursor, count: 1);
              return const Center(child: Text('Fetching latest articles'));
          }
        },
      ),
    );
  }
}
