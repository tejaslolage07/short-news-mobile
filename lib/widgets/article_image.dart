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
        height: url == '' ? 200 : 300,
        errorWidget: (context, url, error) => const Placeholder(),
        placeholder: (context, url) => const SizedBox(
          height: 60,
          child: Center(child: CircularProgressIndicator.adaptive()),
        ),
      ),
    );
  }
}
