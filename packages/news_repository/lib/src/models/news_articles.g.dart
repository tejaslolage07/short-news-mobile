// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_articles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsArticles _$NewsArticlesFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'NewsArticles',
      json,
      ($checkedConvert) {
        final val = NewsArticles(
          articles: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>)
                  .map((e) => NewsArticle.fromJson(e as Map<String, dynamic>))
                  .toList()),
          perPage: $checkedConvert('per_page', (v) => v as int),
          nextCursor: $checkedConvert('next_cursor', (v) => v as String?),
          prevCursor: $checkedConvert('prev_cursor', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'articles': 'data',
        'perPage': 'per_page',
        'nextCursor': 'next_cursor',
        'prevCursor': 'prev_cursor'
      },
    );

Map<String, dynamic> _$NewsArticlesToJson(NewsArticles instance) =>
    <String, dynamic>{
      'data': instance.articles,
      'next_cursor': instance.nextCursor,
      'prev_cursor': instance.prevCursor,
      'per_page': instance.perPage,
    };
