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
    // String text = "Share";
    return FloatingActionButton(
      onPressed: onPressed,
      // child: Text(text),
      child: const Icon(Icons.share),
    );
  }
}
