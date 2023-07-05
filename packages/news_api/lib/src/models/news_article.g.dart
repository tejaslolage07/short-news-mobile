// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'news_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsArticle _$NewsArticleFromJson(Map<String, dynamic> json) => $checkedCreate(
      'NewsArticle',
      json,
      ($checkedConvert) {
        final val = NewsArticle(
          id: $checkedConvert('id', (v) => v as int),
          shortNews: $checkedConvert('short_news', (v) => v as String),
          headline: $checkedConvert('headline', (v) => v as String),
          author: $checkedConvert('author', (v) => v as String),
          newsWebsiteId: $checkedConvert('news_website_id', (v) => v as int),
          articleUrl: $checkedConvert('article_url', (v) => v as String),
          imageUrl: $checkedConvert('image_url', (v) => v as String),
          publishedAt: $checkedConvert(
              'published_at', (v) => DateTime.parse(v as String)),
          source: $checkedConvert('source', (v) => v as String),
          country: $checkedConvert('country',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          language: $checkedConvert('language', (v) => v as String),
          category: $checkedConvert('category',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          keywords: $checkedConvert('keywords',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          newsWebsite: $checkedConvert('news_website',
              (v) => NewsWebsite.fromJson(v as Map<String, dynamic>)),
          articleS3Filename:
              $checkedConvert('article_s3_filename', (v) => v as String),
          fetchedAt:
              $checkedConvert('fetched_at', (v) => DateTime.parse(v as String)),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updated_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'shortNews': 'short_news',
        'newsWebsiteId': 'news_website_id',
        'articleUrl': 'article_url',
        'imageUrl': 'image_url',
        'publishedAt': 'published_at',
        'newsWebsite': 'news_website',
        'articleS3Filename': 'article_s3_filename',
        'fetchedAt': 'fetched_at',
        'createdAt': 'created_at',
        'updatedAt': 'updated_at'
      },
    );
