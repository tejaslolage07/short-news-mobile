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
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(1),
          // foregroundColor: MaterialStateProperty.all(colorScheme.onPrimary),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
          ),
        ),
      ),
      textTheme: TextTheme(
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
          fontSize: 14,
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
