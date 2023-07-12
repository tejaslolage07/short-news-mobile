import 'package:flutter/material.dart';

import '../news/view/news_articles_page.dart';

class ShortNewsAppView extends StatelessWidget {
  const ShortNewsAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Short News',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NewsArticlesPage(),
    );
  }
}
