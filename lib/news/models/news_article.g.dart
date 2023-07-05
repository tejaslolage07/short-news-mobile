// GENERATED CODE - DO NOT MODIFY BY HAND

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
        );
        return val;
      },
      fieldKeyMap: const {
        'shortNews': 'short_news',
        'newsWebsiteId': 'news_website_id',
        'articleUrl': 'article_url',
        'imageUrl': 'image_url',
        'publishedAt': 'published_at',
        'newsWebsite': 'news_website'
      },
    );

Map<String, dynamic> _$NewsArticleToJson(NewsArticle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'short_news': instance.shortNews,
      'headline': instance.headline,
      'author': instance.author,
      'news_website_id': instance.newsWebsiteId,
      'article_url': instance.articleUrl,
      'image_url': instance.imageUrl,
      'published_at': instance.publishedAt.toIso8601String(),
      'source': instance.source,
      'country': instance.country,
      'language': instance.language,
      'category': instance.category,
      'keywords': instance.keywords,
      'news_website': instance.newsWebsite,
    };
