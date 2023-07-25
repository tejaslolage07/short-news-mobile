import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:short_news_mobile/app_constants.dart';

class AppTheme {
  AppTheme();

  static ThemeData get lightTheme {
    const ColorScheme colorScheme = ColorScheme.light(
      primary: Colors.white,
      onPrimary: AppConstants.lightThemeColor,
      secondary: AppConstants.lightThemeColor,
      onSecondary: Colors.white,
      background: Colors.white,
      onBackground: AppConstants.lightThemeColor,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        titleLarge: GoogleFonts.ubuntu(
          fontSize: 26,
          color: colorScheme.onPrimary,
        ),
        titleSmall: GoogleFonts.ubuntu(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyLarge: GoogleFonts.ubuntu(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.black54,
        ),
        bodySmall: GoogleFonts.ubuntu(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: Colors.black38,
        ),
        bodyMedium: GoogleFonts.ubuntu(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Colors.white70,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    const ColorScheme darkColorScheme = ColorScheme.dark(
      primary: AppConstants.darkThemeColor,
      onPrimary: Colors.white,
      secondary: AppConstants.darkThemeColor,
      onSecondary: Colors.white,
      background: Color.fromARGB(255, 48, 48, 48),
      onBackground: Color.fromARGB(255, 66, 66, 66),
    );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: darkColorScheme.background,
      colorScheme: darkColorScheme,
      iconTheme: const IconThemeData(
        color: Color.fromARGB(255, 66, 66, 66),
      ),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.ubuntu(
          fontSize: 26,
          color: darkColorScheme.onPrimary,
        ),
        titleSmall: GoogleFonts.ubuntu(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodyLarge: GoogleFonts.ubuntu(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: const Color.fromARGB(255, 225, 225, 225),
        ),
        bodySmall: GoogleFonts.ubuntu(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: Colors.grey,
        ),
        bodyMedium: GoogleFonts.ubuntu(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Colors.grey,
        ),
      ),
    );
  }
}
