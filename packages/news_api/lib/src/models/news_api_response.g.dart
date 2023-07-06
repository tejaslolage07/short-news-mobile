// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'news_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsApiResponse _$NewsApiResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'NewsApiResponse',
      json,
      ($checkedConvert) {
        final val = NewsApiResponse(
          articles: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>)
                  .map((e) => NewsArticle.fromJson(e as Map<String, dynamic>))
                  .toList()),
          perPage: $checkedConvert('per_page', (v) => v as int),
          path: $checkedConvert('path', (v) => v as String),
          nextPageUrl: $checkedConvert('next_page_url', (v) => v as String?),
          prevPageUrl: $checkedConvert('prev_page_url', (v) => v as String?),
          nextCursor: $checkedConvert('next_cursor', (v) => v as String?),
          prevCursor: $checkedConvert('prev_cursor', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'articles': 'data',
        'perPage': 'per_page',
        'nextPageUrl': 'next_page_url',
        'prevPageUrl': 'prev_page_url',
        'nextCursor': 'next_cursor',
        'prevCursor': 'prev_cursor'
      },
    );

Map<String, dynamic> _$NewsApiResponseToJson(NewsApiResponse instance) =>
    <String, dynamic>{
      'data': instance.articles.map((e) => e.toJson()).toList(),
      'next_cursor': instance.nextCursor,
      'prev_cursor': instance.prevCursor,
      'per_page': instance.perPage,
      'path': instance.path,
      'next_page_url': instance.nextPageUrl,
      'prev_page_url': instance.prevPageUrl,
    };
