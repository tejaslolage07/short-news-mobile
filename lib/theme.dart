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
          fontSize: 20,
          fontWeight: FontWeight.bold,
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
