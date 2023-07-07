import 'package:flutter/material.dart';
import 'package:share/share.dart';

class ShareButton extends StatelessWidget {
  final String url;

  const ShareButton({
    Key? key,
    required this.url,
  }) : super(key: key);

  void onPressed() {
    Share.share(url);
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(Icons.share),
    );
  }
}
