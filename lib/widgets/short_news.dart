import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShortNews extends StatelessWidget {
  const ShortNews({Key? key, required this.newsArticle}) : super(key: key);

  final String newsArticle;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text(
        newsArticle,
        style: GoogleFonts.ubuntu(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.black,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
