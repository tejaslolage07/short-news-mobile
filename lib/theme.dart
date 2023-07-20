import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:short_news_mobile/app_constants.dart';

class AppTheme {
  AppTheme();

  static ThemeData get lightTheme {
    final colorScheme =
        ColorScheme.fromSeed(seedColor: AppConstants.themeColor);

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        surfaceTintColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(
          color: colorScheme.primary,
        ),
        titleTextStyle: GoogleFonts.ubuntu(
          fontSize: 25,
          color: colorScheme.primary,
        ),
        backgroundColor: Colors.white,
        foregroundColor: colorScheme.primary,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colorScheme.primary),
          foregroundColor: MaterialStateProperty.all(colorScheme.onPrimary),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(),
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
        bodyMedium: GoogleFonts.ubuntu(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Colors.white70,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: const Color.fromARGB(255, 48, 48, 48),
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        titleTextStyle: GoogleFonts.ubuntu(
          fontSize: 25,
        ),
        backgroundColor: const Color.fromARGB(255, 66, 66, 66),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color.fromARGB(255, 75, 75, 75),
        foregroundColor: Colors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(const Color.fromARGB(255, 66, 66, 66)),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(),
            ),
          ),
        ),
      ),
      iconTheme: const IconThemeData(
        color: Color.fromARGB(255, 66, 66, 66),
      ),
      textTheme: TextTheme(
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
          fontSize: 14,
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

  static NativeTemplateStyle getNativeAdTheme() {
    bool isDarkMode =
        WidgetsBinding.instance.platformDispatcher.platformBrightness ==
            ui.Brightness.dark;
    Color mainBackgroundColor;
    Color backgroundColor;
    Color textColor;
    if (isDarkMode) {
      mainBackgroundColor = const Color.fromARGB(255, 48, 48, 48);
      backgroundColor = const Color.fromARGB(255, 48, 48, 48);
      textColor = Colors.white;
    } else {
      mainBackgroundColor = Colors.white;
      backgroundColor = Colors.white;
      textColor = AppConstants.themeColor;
    }
    return NativeTemplateStyle(
      templateType: TemplateType.medium,
      mainBackgroundColor: mainBackgroundColor,
      cornerRadius: 10.0,
      callToActionTextStyle: NativeTemplateTextStyle(
          textColor: textColor, backgroundColor: backgroundColor, size: 16.0),
      primaryTextStyle: NativeTemplateTextStyle(
          textColor: textColor, backgroundColor: backgroundColor, size: 16.0),
      secondaryTextStyle: NativeTemplateTextStyle(
          textColor: textColor, backgroundColor: backgroundColor, size: 16.0),
      tertiaryTextStyle: NativeTemplateTextStyle(
          textColor: textColor, backgroundColor: backgroundColor, size: 16.0),
    );
  }
}
