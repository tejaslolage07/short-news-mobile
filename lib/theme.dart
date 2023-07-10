import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme();

  static ThemeData get lightTheme {
    var colorScheme = ColorScheme.fromSwatch(
      primarySwatch: Colors.deepPurple,
      accentColor: Colors.teal,
      brightness: Brightness.light,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      ),
      textTheme: TextTheme(
        titleSmall: GoogleFonts.ubuntu(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyLarge: GoogleFonts.ubuntu(
          fontSize: 17,
          fontWeight: FontWeight.normal,
          color: Colors.black54,
        ),
        bodySmall: GoogleFonts.ubuntu(
          fontSize: 13,
          fontWeight: FontWeight.normal,
          color: Colors.black38,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    var darkColorScheme = ColorScheme.fromSwatch(
      primarySwatch: Colors.blueGrey,
      accentColor: Colors.amber,
      brightness: Brightness.dark,
    );

    return ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: darkColorScheme,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: darkColorScheme.primary,
        foregroundColor: darkColorScheme.onPrimary,
      ),
    );
  }
}
