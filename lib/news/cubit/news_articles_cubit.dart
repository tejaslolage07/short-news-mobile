import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:news_repository/news_repository.dart' show NewsRepository;
import 'package:short_news_mobile/news/models/news_articles.dart';

part 'news_articles_state.dart';
part 'news_articles_cubit.g.dart';

class NewsArticlesCubit extends HydratedCubit<NewsArticlesState> {
  NewsArticlesCubit(this._newsRepository) : super(NewsArticlesState());

  final NewsRepository _newsRepository;

  Future<void> fetchNewsArticles(String? cursor, {int count = 100}) async {
    emit(state.copyWith(status: NewsArticlesStatus.loading));
    try {
      final newsArticles = NewsArticles.fromRepository(
          await _newsRepository.getNewsArticles(cursor: cursor, count: count));
      emit(state.copyWith(
        status: NewsArticlesStatus.success,
        newsArticles: newsArticles,
      ));
    } on Exception {
      emit(state.copyWith(status: NewsArticlesStatus.failure));
    }
  }

  @override
  NewsArticlesState fromJson(Map<String, dynamic> json) =>
      NewsArticlesState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(state) => state.toJson();
}
