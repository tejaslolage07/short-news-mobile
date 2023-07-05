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
        );
        return val;
      },
    );
