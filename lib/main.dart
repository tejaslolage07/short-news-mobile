import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:news_repository/news_repository.dart';
import 'package:short_news_mobile/app_bloc_observer.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();
  timeago.setLocaleMessages('ja', timeago.JaMessages());

  runApp(
    ShortNewsApp(
      newsRepository: NewsRepository(),
    ),
  );
}
