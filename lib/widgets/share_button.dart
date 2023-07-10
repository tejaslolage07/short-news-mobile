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
    return Material(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
            color: Colors.blue,
          ),
          child: const Icon(Icons.share, color: Colors.white),
        ),
      ),
    );
  }
}
