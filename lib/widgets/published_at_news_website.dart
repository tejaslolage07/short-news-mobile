import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class PublishedAtNewsWebsite extends StatelessWidget {
  final DateTime publishedAt;
  final String newsWebsite;

  const PublishedAtNewsWebsite({
    Key? key,
    required this.publishedAt,
    required this.newsWebsite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String formattedDateTime = timeago.format(publishedAt,
        locale: Localizations.localeOf(context).toString());
    return Text(
      '$newsWebsite  /  $formattedDateTime',
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
