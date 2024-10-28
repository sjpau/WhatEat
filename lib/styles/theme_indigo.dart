import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData indigoTheme = ThemeData(
  primarySwatch: Colors.indigo,
  primaryColor: const Color(0xFF3A3A7E), 
  
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: const Color(0xFFFF6F61), 
  ),
  
  scaffoldBackgroundColor: const Color(0xFFF5F5F9), 
  canvasColor: const Color(0xFFE0E3EB), 
  
  textTheme: TextTheme(
    displayLarge: GoogleFonts.raleway(
      fontSize: 34.0,
      fontWeight: FontWeight.bold,
      color: const Color(0xFF212121), 
    ),
    displayMedium: GoogleFonts.raleway(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: const Color(0xFF212121),
    ),
    displaySmall: GoogleFonts.raleway(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: const Color(0xFF212121),
    ),
    bodyLarge: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: const Color(0xFF4A4A4A), 
    ),
    bodyMedium: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: const Color(0xFF4A4A4A),
    ),
  ),
  
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    buttonColor: const Color(0xFFFF6F61), 
    textTheme: ButtonTextTheme.primary,
  ),
  
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFFFF6F61),
    foregroundColor: Colors.white,
  ),
  
  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xFF3A3A7E), 
    elevation: 1.0,
    titleTextStyle: GoogleFonts.raleway(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  ),
  
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFFE0E3EB),
    contentPadding: const EdgeInsets.all(14.0),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: Color(0xFF3A3A7E), width: 1.5),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: Color(0xFFFF6F61), width: 1.5),
    ),
    hintStyle: const TextStyle(color: Color(0xFF9E9E9E)),
    labelStyle: const TextStyle(color: Color(0xFF3A3A7E)),
  ),
  
  cardTheme: CardTheme(
    color: Colors.white,
    shadowColor: Colors.grey.withOpacity(0.3),
    elevation: 3.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14.0),
    ),
  ),
  
  iconTheme: const IconThemeData(
    color: Color(0xFF3A3A7E),
  ),
  
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Color(0xFF3A3A7E),
  ),
  
  chipTheme: const ChipThemeData(
    backgroundColor: Color(0xFFFF6F61),
    labelStyle: TextStyle(color: Colors.white),
    padding: EdgeInsets.all(8.0),
    shape: StadiumBorder(),
  ),
);
