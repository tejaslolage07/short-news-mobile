import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:news_repository/news_repository.dart' hide NewsArticles;

import '../models/news_articles.dart';

part 'news_articles_event.dart';
part 'news_articles_state.dart';

class NewsArticleBloc extends Bloc<NewsArticlesEvent, NewsArticlesState> {
  NewsArticleBloc({
    required NewsRepository newsRepository,
  })  : _newsRepository = newsRepository,
        super(NewsArticlesState()) {
    on<NewsArticlesFetch>(_onNewsArticlesFetch);
  }
  final NewsRepository _newsRepository;

  Future<void> _onNewsArticlesFetch(
    NewsArticlesFetch event,
    Emitter<NewsArticlesState> emit,
  ) async {
    try {
      final newsArticles = NewsArticles.fromRepository(await _newsRepository
          .getNewsArticles(cursor: event.cursor, count: event.count));
      emit(state.copyWith(
        status: NewsArticlesStatus.success,
        newsArticles: newsArticles,
        isRefresh: event.cursor.isEmpty,
      ));
    } on Exception {
      emit(state.copyWith(status: NewsArticlesStatus.failure));
    }
  }
}
