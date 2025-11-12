
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color _primaryColor = Color(0xFF1E88E5);
  static const Color _secondaryColor = Color(0xFFFFC107);
  static const Color _backgroundColor = Color(0xFFF5F5F5);
  static const Color _darkBackgroundColor = Color(0xFF212121);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: _primaryColor,
      scaffoldBackgroundColor: _backgroundColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _primaryColor,
        secondary: _secondaryColor,
        surface: _backgroundColor,
        brightness: Brightness.light,
      ),
      textTheme: _textTheme(base: GoogleFonts.robotoTextTheme()),
      appBarTheme: _appBarTheme(
        backgroundColor: _primaryColor,
        foregroundColor: Colors.white,
      ),
      elevatedButtonTheme: _elevatedButtonTheme(
        backgroundColor: _primaryColor,
        foregroundColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: _primaryColor,
        foregroundColor: Colors.white,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: _primaryColor,
      scaffoldBackgroundColor: _darkBackgroundColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _primaryColor,
        secondary: _secondaryColor,
        surface: _darkBackgroundColor,
        brightness: Brightness.dark,
      ),
      textTheme: _textTheme(base: GoogleFonts.robotoTextTheme(ThemeData(brightness: Brightness.dark).textTheme)),
      appBarTheme: _appBarTheme(
        backgroundColor: _darkBackgroundColor,
        foregroundColor: Colors.white,
      ),
      elevatedButtonTheme: _elevatedButtonTheme(
        backgroundColor: _secondaryColor,
        foregroundColor: _darkBackgroundColor,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: _secondaryColor,
        foregroundColor: _darkBackgroundColor,
      ),
    );
  }

  static TextTheme _textTheme({required TextTheme base}) {
    return base.copyWith(
      displayLarge: GoogleFonts.pacifico(textStyle: base.displayLarge),
      displayMedium: GoogleFonts.pacifico(textStyle: base.displayMedium),
      displaySmall: GoogleFonts.pacifico(textStyle: base.displaySmall),
      headlineMedium: GoogleFonts.oswald(textStyle: base.headlineMedium),
      titleLarge: GoogleFonts.oswald(textStyle: base.titleLarge),
      bodyLarge: GoogleFonts.lato(textStyle: base.bodyLarge),
      bodyMedium: GoogleFonts.lato(textStyle: base.bodyMedium),
    );
  }

  static AppBarTheme _appBarTheme({required Color backgroundColor, required Color foregroundColor}) {
    return AppBarTheme(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      elevation: 0,
      titleTextStyle: GoogleFonts.oswald(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static ElevatedButtonThemeData _elevatedButtonTheme({required Color backgroundColor, required Color foregroundColor}) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    );
  }
}
