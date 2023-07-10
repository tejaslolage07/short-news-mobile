import 'package:flutter/material.dart';

class ShortNews extends StatelessWidget {
  const ShortNews({Key? key, required this.newsArticle}) : super(key: key);

  final String newsArticle;

  @override
  Widget build(BuildContext context) {
    return Text(
      newsArticle,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
