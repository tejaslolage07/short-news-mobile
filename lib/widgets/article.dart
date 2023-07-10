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
          right: 5,
          left: 5,
          top: 4 + mediaQuery.size.height / 3.2,
          child: Container(
            color: Colors.black.withOpacity(0.3),
            height: mediaQuery.size.height / 10,
            width: mediaQuery.size.width,
            child: Headline(text: article.headline),
          ),
        ),
        Positioned(
          right: 5,
          left: 5,
          top: 10 + mediaQuery.size.height / 3.2 + mediaQuery.size.height / 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: mediaQuery.size.height / 2.45,
                ),
                child: Scrollbar(
                  radius: const Radius.circular(5),
                  thickness: 5,
                  child: SingleChildScrollView(
                    child: Container(
                      color: Colors.blue.withOpacity(0.9),
                      child: ShortNews(newsArticle: article.shortNews),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 5),
                // color: Colors.amber,
                width: mediaQuery.size.width - 60,
                child: PublishedAtNewsWebsite(
                    publishedAt: article.publishedAt.toIso8601String(),
                    newsWebsite: article.newsWebsite.website),
              ),
            ],
          ),
        ),
        Positioned(
          right: 5,
          bottom: 45,
          child: ShareButton(url: article.articleUrl),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          left: 0,
          child: Container(
            height: 40,
            width: mediaQuery.size.width,
            color: Colors.white,
            child: RedirectToWebsite(url: article.articleUrl),
          ),
        ),
      ],
    );
  }
}
