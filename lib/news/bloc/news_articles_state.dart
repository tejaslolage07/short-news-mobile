part of 'news_articles_bloc.dart';

enum NewsArticlesStatus { initial, success, failure }

extension NewsArticlesStatusX on NewsArticlesStatus {
  bool get isInitial => this == NewsArticlesStatus.initial;
  bool get isSuccess => this == NewsArticlesStatus.success;
  bool get isFailure => this == NewsArticlesStatus.failure;
}

@JsonSerializable()
final class NewsArticlesState extends Equatable {
  NewsArticlesState({
    this.status = NewsArticlesStatus.initial,
    NewsArticles? newsArticles,
  }) : newsArticles = newsArticles ?? NewsArticles.empty;

  final NewsArticles newsArticles;
  final NewsArticlesStatus status;

  NewsArticlesState copyWith({
    NewsArticlesStatus? status,
    NewsArticles? newsArticles,
    bool isRefresh = false,
  }) {
    if (newsArticles == null) {
      return NewsArticlesState(
        status: status ?? this.status,
        newsArticles: this.newsArticles,
      );
    }

    if (isRefresh) {
      return NewsArticlesState(
        status: status ?? this.status,
        newsArticles: newsArticles,
      );
    }
    return NewsArticlesState(
      status: status ?? this.status,
      newsArticles: NewsArticles(
        articles: this.newsArticles.articles + newsArticles.articles,
        nextCursor: newsArticles.nextCursor,
        prevCursor: this.newsArticles.prevCursor,
        perPage: newsArticles.perPage,
      ),
    );
  }

  @override
  List<Object?> get props => [status, newsArticles];
}
