part of 'news_articles_bloc.dart';

sealed class NewsArticlesEvent extends Equatable {
  const NewsArticlesEvent();

  @override
  List<Object> get props => [];
}

final class NewsArticlesFetch extends NewsArticlesEvent {
  const NewsArticlesFetch({this.cursor = '', this.count = 100});
  final String cursor;
  final int count;

  @override
  List<Object> get props => [cursor, count];
}
