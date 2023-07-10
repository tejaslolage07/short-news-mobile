import 'package:flutter/material.dart';
import 'package:short_news_mobile/news/models/news_article.dart';
import 'package:short_news_mobile/widgets/headline.dart';
import 'package:short_news_mobile/widgets/published_at_news_website.dart';
import 'package:short_news_mobile/widgets/redirect_to_website.dart';
import 'package:short_news_mobile/widgets/share_button.dart';
import 'package:short_news_mobile/widgets/short_news.dart';

import 'article_image.dart';

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
