import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ArticleImage extends StatelessWidget {
  const ArticleImage(this.url, {super.key});
  final String url;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      borderOnForeground: true,
      margin: EdgeInsets.zero,
      child: CachedNetworkImage(
        imageUrl: url,
        fit: BoxFit.fill,
        width: double.infinity,
        errorWidget: (context, url, error) => Image.asset(
          'assets/images/placeholder.png',
          fit: BoxFit.fill,
        ),
        placeholder: (context, url) => Image.asset(
          'assets/images/placeholder.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
