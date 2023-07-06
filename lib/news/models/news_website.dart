// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'news_website.g.dart';

@JsonSerializable()
class NewsWebsite {
  const NewsWebsite({
    required this.website,
    required this.id,
  });

  factory NewsWebsite.fromJson(Map<String, dynamic> json) =>
      _$NewsWebsiteFromJson(json);

  Map<String, dynamic> toJson() => _$NewsWebsiteToJson(this);

  final String website;
  final int id;
}
