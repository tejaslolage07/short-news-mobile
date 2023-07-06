import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:news_repository/news_repository.dart';
import 'package:short_news_mobile/news_bloc_observer.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const NewsArticlesBlocObserver();

  runApp(
    ShortNewsApp(
      newsRepository: NewsRepository(),
    ),
  );
}
