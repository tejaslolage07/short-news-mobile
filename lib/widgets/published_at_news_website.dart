import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeago/timeago.dart' as timeago;

class PublishedAtNewsWebsite extends StatelessWidget {
  final String publishedAt;
  final String newsWebsite;

  const PublishedAtNewsWebsite({
    Key? key,
    required this.publishedAt,
    required this.newsWebsite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String formattedDateTime =
        timeago.format(DateTime.parse(publishedAt), locale: 'en_short');
    return Text(
      '$newsWebsite  /  $formattedDateTime ago',
      style: GoogleFonts.ubuntu(
        color: const Color.fromARGB(255, 120, 120, 120),
        fontSize: 10,
        decoration: TextDecoration.none,
      ),
    );
  }
}
