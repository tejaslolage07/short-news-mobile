// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_website.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsWebsite _$NewsWebsiteFromJson(Map<String, dynamic> json) => $checkedCreate(
      'NewsWebsite',
      json,
      ($checkedConvert) {
        final val = NewsWebsite(
          website: $checkedConvert('website', (v) => v as String),
          id: $checkedConvert('id', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$NewsWebsiteToJson(NewsWebsite instance) =>
    <String, dynamic>{
      'website': instance.website,
      'id': instance.id,
    };
