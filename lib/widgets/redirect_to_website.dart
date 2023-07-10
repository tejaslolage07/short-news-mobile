import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class RedirectToWebsite extends StatelessWidget {
  final String url;

  const RedirectToWebsite({Key? key, required this.url}) : super(key: key);

  void onPressed() async {
    final Uri urlToBeLaunched = Uri.parse(url);
    if (!await launchUrl(urlToBeLaunched)) {
      var couldNotOpen = Intl.message('couldNotOpen');
      throw Exception('$couldNotOpen $urlToBeLaunched');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(Intl.message('openInBrowser')),
    );
  }
}
