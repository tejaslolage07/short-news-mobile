import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Headline extends StatelessWidget {
  const Headline({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text(
        text,
        style: GoogleFonts.ubuntu(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
