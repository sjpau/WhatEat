import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData themeRegular = ThemeData(
  primarySwatch: Colors.green, 
  
  primaryColor: const Color(0xFF81C784), 
  
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: const Color(0xFFFF7043), 
  ),
  
  scaffoldBackgroundColor: const Color(0xFFFFFFFF), // Creamy White
  canvasColor: const Color(0xFFFFECB3), // Soft Yellow
  
  textTheme: TextTheme(
    displayLarge: GoogleFonts.poppins(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: const Color(0xFF4E342E), 
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: const Color(0xFF4E342E), 
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: const Color(0xFF4E342E), 
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: const Color(0xFF616161), 
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: const Color(0xFF616161), 
    ),
    ),
  
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    buttonColor: const Color(0xFF81C784),
    textTheme: ButtonTextTheme.primary, 
  ),
  
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFFFF7043), 
    foregroundColor: Colors.white, 
  ),
  
  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xFF388E3C), 
    elevation: 2.0, 
    titleTextStyle: GoogleFonts.poppins(
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
    fillColor: const Color(0xFFFFF8E1), 
    contentPadding: const EdgeInsets.all(16.0),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(color: Color(0xFF81C784), width: 2.0), 
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(color: Color(0xFFFF7043), width: 2.0), 
    ),
    hintStyle: const TextStyle(color: Color(0xFF9E9E9E)), 
    labelStyle: const TextStyle(color: Color(0xFF4E342E)),
  ),
  
  cardTheme: CardTheme(
    color: Colors.white, 
    shadowColor: Colors.grey.withOpacity(0.2), 
    elevation: 4.0, 
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
  ),
  
  iconTheme: const IconThemeData(
    color: Color.fromARGB(255, 12, 8, 8), 
  ),
  
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Color(0xFF81C784), 
  ),
  
  chipTheme: const ChipThemeData(
    backgroundColor: Color(0xFFFF7043), 
    labelStyle: TextStyle(color: Colors.white), 
    padding: EdgeInsets.all(8.0),
    shape: StadiumBorder(), 
  ),
);
