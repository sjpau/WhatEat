import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData themeMinimalistCool = ThemeData(
  primarySwatch: Colors.blueGrey,

  primaryColor: const Color(0xFF1C4B82), 
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: const Color(0xFF6C63FF), 
  ),

  scaffoldBackgroundColor: const Color(0xFFEDEFF1), 
  canvasColor: const Color(0xFFD4D8DD), 

  textTheme: TextTheme(
    displayLarge: GoogleFonts.nunito(
      fontSize: 34.0,
      fontWeight: FontWeight.w800,
      color: const Color(0xFF1C4B82), 
    ),
    displayMedium: GoogleFonts.nunito(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: const Color(0xFF1C4B82), 
    ),
    displaySmall: GoogleFonts.nunito(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: const Color(0xFF3A3D46), 
    ),
    bodyLarge: GoogleFonts.raleway(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF52575C), 
    ),
    bodyMedium: GoogleFonts.raleway(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF52575C), 
    ),
  ),

  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    buttonColor: const Color(0xFF6C63FF), 
    textTheme: ButtonTextTheme.primary, 
  ),

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFF6C63FF), 
    foregroundColor: Colors.white, 
  ),

  appBarTheme: AppBarTheme(
    backgroundColor: const Color.fromARGB(255, 129, 177, 232), 
    elevation: 3.0,
    titleTextStyle: GoogleFonts.nunito(
      fontSize: 20.0,
      fontWeight: FontWeight.w800,
      color: Colors.white, 
    ),
    iconTheme: const IconThemeData(
      color: Colors.white, 
    ),
  ),

  // Input Decoration Theme
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFFB0BEC5), 
    contentPadding: const EdgeInsets.all(16.0),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: Color(0xFF1C4B82), width: 2.0), 
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: Color(0xFF6C63FF), width: 2.0), 
    ),
    hintStyle: const TextStyle(color: Color(0xFF757575)), 
    labelStyle: const TextStyle(color: Color(0xFF3A3D46)), 
  ),

  cardTheme: CardTheme(
    color: Colors.white, 
    shadowColor: Colors.grey.withOpacity(0.3), 
    elevation: 3.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
  ),

  iconTheme: const IconThemeData(
    color: Color(0xFF3A3D46), 
  ),

  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Color(0xFF1C4B82), 
  ),

  chipTheme: const ChipThemeData(
    backgroundColor: Color(0xFF6C63FF), 
    labelStyle: TextStyle(color: Colors.white), 
    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
    shape: StadiumBorder(),
  ),
);
