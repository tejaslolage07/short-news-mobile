import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:short_news_mobile/news/bloc/news_articles_bloc.dart';

class ArticlesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ArticlesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations localizations = AppLocalizations.of(context)!;
    return AppBar(
      title: Text(localizations.articleAppBarTitle),
      actions: [
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () {
            BlocProvider.of<NewsArticleBloc>(context)
                .add(NewsArticlesRefresh());
          },
        ),
      ],
      centerTitle: true,
      elevation: 0,
      surfaceTintColor: Colors.white,
      iconTheme: IconThemeData(
        color: Theme.of(context).colorScheme.primary,
      ),
      titleTextStyle: GoogleFonts.ubuntu(
        fontSize: 25,
        color: Theme.of(context).colorScheme.primary,
      ),
      backgroundColor: Colors.white,
      foregroundColor: Theme.of(context).colorScheme.primary,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
