import 'package:flutter/material.dart';

import '../models/news_article.dart';
import 'article_image.dart';
import 'headline.dart';
import 'published_at_news_website.dart';
import 'redirect_to_website.dart';
import 'share_button.dart';
import 'short_news.dart';

class ArticleWidget extends StatelessWidget {
  final NewsArticle article;
  const ArticleWidget(this.article, {super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Stack(
      children: [
        SizedBox(
          height: mediaQuery.size.height / 3.2,
          child: ArticleImage(article.imageUrl),
        ),
        Positioned(
          right: 14,
          left: 14,
          top: 4 + mediaQuery.size.height / 3.2,
          bottom: 0,
          child: SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Headline(text: article.headline),
                  const SizedBox(height: 7),
                  PublishedAtNewsWebsite(
                    publishedAt: article.publishedAt,
                    newsWebsite: article.newsWebsite.website,
                  ),
                  const SizedBox(height: 10),
                  ShortNews(newsArticle: article.shortNews),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 5,
          top: mediaQuery.size.height / 3.2 - 50,
          child: ShareButton(url: article.articleUrl),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          left: 0,
          child: SizedBox(
              //color: Colors.transparent,
              height: 30,
              child: RedirectToWebsite(url: article.articleUrl)),
        ),
      ],
    );
  }
}
