// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_articles_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsArticlesState _$NewsArticlesStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'NewsArticlesState',
      json,
      ($checkedConvert) {
        final val = NewsArticlesState(
          status: $checkedConvert(
              'status',
              (v) =>
                  $enumDecodeNullable(_$NewsArticlesStatusEnumMap, v) ??
                  NewsArticlesStatus.initial),
          newsArticles: $checkedConvert(
              'news_articles',
              (v) => v == null
                  ? null
                  : NewsArticles.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'newsArticles': 'news_articles'},
    );

Map<String, dynamic> _$NewsArticlesStateToJson(NewsArticlesState instance) =>
    <String, dynamic>{
      'news_articles': instance.newsArticles,
      'status': _$NewsArticlesStatusEnumMap[instance.status]!,
    };

const _$NewsArticlesStatusEnumMap = {
  NewsArticlesStatus.initial: 'initial',
  NewsArticlesStatus.success: 'success',
  NewsArticlesStatus.failure: 'failure',
};
