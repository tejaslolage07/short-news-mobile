import 'package:flutter/material.dart';
import 'package:short_news_mobile/news/models/news_article.dart';
import 'package:short_news_mobile/widgets/headline.dart';
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
          right: 4,
          left: 4,
          top: 3 + mediaQuery.size.height / 3.2,
          child: Container(
            color: Colors.black,
            height: mediaQuery.size.height / 11,
            width: mediaQuery.size.width,
            child: Headline(text: article.headline),
          ),
        ),
        Positioned(
          right: 4,
          left: 4,
          top: 10 + mediaQuery.size.height / 3.2 + mediaQuery.size.height / 11,
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: mediaQuery.size.height / 2.6),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.amber,
                  child: ShortNews(newsArticle: article.shortNews),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: 45,
          child: ShareButton(url: article.articleUrl),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          left: 0,
          child: Container(
            height: 35,
            width: mediaQuery.size.width,
            color: Colors.white,
            child: RedirectToWebsite(url: article.articleUrl),
          ),
        ),
      ],
    );
  }
}
