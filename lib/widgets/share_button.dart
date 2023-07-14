import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareButton extends StatelessWidget {
  final String url;

  const ShareButton({
    Key? key,
    required this.url,
  }) : super(key: key);

  void _onPressed(BuildContext context) {
    final box = context.findRenderObject() as RenderBox?;
    Share.share(
      url,
      sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      onPressed: () => _onPressed(context),
      child: const Icon(Icons.share),
    );
  }
}
