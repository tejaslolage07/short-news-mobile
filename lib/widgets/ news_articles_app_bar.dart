import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '/news/cubit/news_articles_cubit.dart';

class ArticlesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ArticlesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      title: const Text('Feed'),
      actions: [
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () {
            BlocProvider.of<NewsArticlesCubit>(context).fetchNewsArticles(
              cursor: '',
              count: 0,
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
