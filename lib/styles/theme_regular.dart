import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData themeRegular = ThemeData(
  // Primary Swatch: This automatically generates shades of the primary color
  primarySwatch: Colors.green, // Matches #81C784
  
  // Primary Color (App Bar, active buttons, etc.)
  primaryColor: const Color(0xFF81C784), // Green (Lime/Herbal)
  
  // Accent Color for Buttons, Highlights, etc.
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: const Color(0xFFFF7043), // Orange (Tomato)
  ),
  
  // Background Colors
  scaffoldBackgroundColor: const Color(0xFFFFFFFF), // Creamy White
  canvasColor: const Color(0xFFFFECB3), // Soft Yellow
  
  // Font Family using Google Fonts
  textTheme: TextTheme(
    // For recipe titles, app bar titles, etc.
    displayLarge: GoogleFonts.poppins(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: const Color(0xFF4E342E), // Dark Brown
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: const Color(0xFF4E342E), // Dark Brown
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: const Color(0xFF4E342E), // Dark Brown
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: const Color(0xFF616161), // Charcoal Gray
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: const Color(0xFF616161), // Charcoal Gray
    ),
    ),
  
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    buttonColor: const Color(0xFF81C784), // Green for main buttons
    textTheme: ButtonTextTheme.primary, // Ensures white text on primary buttons
  ),
  
  // FloatingActionButton Theme
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFFFF7043), // Orange for action buttons
    foregroundColor: Colors.white, // White icon/text
  ),
  
  // AppBar Theme
  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xFF388E3C), // Dark Green
    elevation: 2.0, // Slight shadow under the AppBar
    titleTextStyle: GoogleFonts.poppins(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.white, // White text in AppBar
    ),
    iconTheme: const IconThemeData(
      color: Colors.white, // Icons in the AppBar are white
    ),
  ),
  
  // Input Decoration Theme (for text fields)
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFFFFF8E1), // Light yellow for text fields
    contentPadding: const EdgeInsets.all(16.0),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(color: Color(0xFF81C784), width: 2.0), // Green border
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(color: Color(0xFFFF7043), width: 2.0), // Orange on focus
    ),
    hintStyle: const TextStyle(color: Color(0xFF9E9E9E)), // Soft gray for hints
    labelStyle: const TextStyle(color: Color(0xFF4E342E)), // Dark brown for labels
  ),
  
  // Card Theme
  cardTheme: CardTheme(
    color: Colors.white, // White card background
    shadowColor: Colors.grey.withOpacity(0.2), // Light shadow
    elevation: 4.0, // Slight elevation for depth
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
  ),
  
  // Icon Themes
  iconTheme: const IconThemeData(
    color: Color.fromARGB(255, 12, 8, 8), // Dark brown for icons
  ),
  
  // Progress Bar Theme
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Color(0xFF81C784), // Green progress bar
  ),
  
  // Floating Labels (such as "New" tags or badges)
  chipTheme: const ChipThemeData(
    backgroundColor: Color(0xFFFF7043), // Orange chips
    labelStyle: TextStyle(color: Colors.white), // White text on chips
    padding: EdgeInsets.all(8.0),
    shape: StadiumBorder(), // Rounded chip shape
  ),
);
