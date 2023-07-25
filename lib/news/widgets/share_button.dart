import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

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
    return FloatingActionButton.small(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      foregroundColor: Theme.of(context).colorScheme.onSecondary,
      onPressed: onPressed,
      child: const Icon(Icons.share),
    );
  }
}
