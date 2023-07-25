import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_repository/news_repository.dart';

import 'views/short_news_app_view.dart';

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
