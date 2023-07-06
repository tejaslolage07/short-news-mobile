// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

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
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updated_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at', 'updatedAt': 'updated_at'},
    );

Map<String, dynamic> _$NewsWebsiteToJson(NewsWebsite instance) =>
    <String, dynamic>{
      'website': instance.website,
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
