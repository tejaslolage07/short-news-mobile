// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'news_website.g.dart';

@JsonSerializable()
class NewsWebsite {
  const NewsWebsite({
    required this.website,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
  });

  factory NewsWebsite.fromJson(Map<String, dynamic> json) =>
      _$NewsWebsiteFromJson(json);

  Map<String, dynamic> toJson() => _$NewsWebsiteToJson(this);

  final String website;
  final int id;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
}
