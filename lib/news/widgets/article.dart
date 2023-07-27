import 'package:flutter/material.dart';

import '../models/news_article.dart';
import 'article_image.dart';
import 'headline.dart';
import 'published_at_news_website.dart';
import 'redirect_to_website.dart';
import 'share_button.dart';
import 'short_news.dart';

class ArticleWidget extends StatefulWidget {
  final NewsArticle article;
  final PageController pageController;
  const ArticleWidget(this.article, this.pageController, {super.key});

  @override
  State<ArticleWidget> createState() => _ArticleWidgetState();
}

class _ArticleWidgetState extends State<ArticleWidget> {
  late final ScrollController scrollController;

  @override
  void initState() {
    // TODO: implement initState
    scrollController = ScrollController()
      ..addListener(() {
        if (scrollController.offset >
            scrollController.position.maxScrollExtent + 150) {
          if (scrollController.position.isScrollingNotifier.value) {
            widget.pageController.nextPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut);
          }
        }

        if (scrollController.offset <
            scrollController.position.minScrollExtent - 150) {
          if (widget.pageController.page != 0) {
            widget.pageController.previousPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut);
          }
        }
      });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            SizedBox(
              height: mediaQuery.size.height / 3.2,
              child: ArticleImage(widget.article.imageUrl.trim()),
            ),
            Positioned(
              right: 5,
              top: mediaQuery.size.height / 3.2 - 50,
              child: ShareButton(url: widget.article.articleUrl),
            ),
          ],
        ),
        SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Headline(text: widget.article.headline),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: PublishedAtNewsWebsite(
            publishedAt: widget.article.publishedAt,
            newsWebsite: widget.article.newsWebsite.website,
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShortNews(
                    newsArticle: widget.article.shortNews +
                        widget.article.shortNews +
                        widget.article.shortNews +
                        widget.article.shortNews +
                        widget.article.shortNews +
                        widget.article.shortNews +
                        widget.article.shortNews,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          width: double.infinity,
          height: 45,
          child: RedirectToWebsite(
            url: widget.article.articleUrl.trim(),
          ),
        ),
      ],
    );
  }
}
