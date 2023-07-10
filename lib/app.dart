import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:news_repository/news_repository.dart';
import 'package:short_news_mobile/theme.dart';
import 'l10n/l10n.dart';
import 'news/view/news_articles_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShortNewsApp extends StatelessWidget {
  const ShortNewsApp({required NewsRepository newsRepository, super.key})
      : _newsRepository = newsRepository;

  final NewsRepository _newsRepository;
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _newsRepository,
      child: const ShortNewsAppView(),
    );
  }
}

class ShortNewsAppView extends StatelessWidget {
  const ShortNewsAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Short News',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      supportedLocales: L10n.all,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: const NewsArticlesPage(),
    );
  }
}
