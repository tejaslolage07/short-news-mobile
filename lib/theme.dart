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
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      cardTheme: CardTheme(
        color: colorScheme.secondary,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
        ),
      ),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.ubuntu(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: colorScheme.onPrimary,
        ),
        titleMedium: GoogleFonts.ubuntu(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: colorScheme.onPrimary,
        ),
        titleSmall: GoogleFonts.ubuntu(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: colorScheme.onPrimary,
        ),
        bodyLarge: GoogleFonts.ubuntu(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: colorScheme.onPrimary,
        ),
        bodyMedium: GoogleFonts.ubuntu(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: colorScheme.onPrimary,
        ),
        bodySmall: GoogleFonts.ubuntu(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: colorScheme.onPrimary,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    var colorScheme = ColorScheme.fromSwatch(
      primarySwatch: Colors.blueGrey,
      accentColor: Colors.amber,
      brightness: Brightness.dark,
    );

    return ThemeData.dark().copyWith(
      colorScheme: colorScheme,
      cardTheme: CardTheme(
        color: colorScheme.secondary,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
        ),
      ),
    );
  }
}
