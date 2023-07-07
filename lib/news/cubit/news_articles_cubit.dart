import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:news_repository/news_repository.dart' show NewsRepository;
import 'package:short_news_mobile/news/models/news_articles.dart';

part 'news_articles_state.dart';
part 'news_articles_cubit.g.dart';

class NewsArticlesCubit extends Cubit<NewsArticlesState> {
  NewsArticlesCubit(this._newsRepository) : super(NewsArticlesState());

  final NewsRepository _newsRepository;

  Future<void> fetchNewsArticles({String? cursor, int count = 100}) async {
    try {
      if (count == 0 && cursor == '') {
        emit(
          NewsArticlesState(
            status: NewsArticlesStatus.initial,
          ),
        );
        return;
      }
      final newsArticles = NewsArticles.fromRepository(
          await _newsRepository.getNewsArticles(cursor: cursor, count: count));
      emit(state.copyWith(
        status: NewsArticlesStatus.success,
        newsArticles: newsArticles,
        isRefresh: cursor == null || cursor == '',
      ));
    } on Exception {
      emit(state.copyWith(status: NewsArticlesStatus.failure));
    }
  }

  NewsArticlesState fromJson(Map<String, dynamic> json) =>
      NewsArticlesState.fromJson(json);

  Map<String, dynamic>? toJson(state) => state.toJson();
}
