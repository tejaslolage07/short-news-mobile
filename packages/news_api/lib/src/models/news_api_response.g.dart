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
          nextCursor: $checkedConvert('next_cursor', (v) => v as String?),
          prevCursor: $checkedConvert('prev_cursor', (v) => v as String?),
          perPage: $checkedConvert('per_page', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'articles': 'data',
        'nextCursor': 'next_cursor',
        'prevCursor': 'prev_cursor',
        'perPage': 'per_page'
      },
    );
