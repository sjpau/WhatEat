import 'package:flutter/material.dart';
import 'package:what_eat_flutter/styles/theme_regular.dart';
import 'package:what_eat_flutter/styles/theme_alt_vibe.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _selectedTheme = themeRegular; 

  ThemeData get selectedTheme => _selectedTheme;

  void setTheme(ThemeData theme) {
    _selectedTheme = theme;
    notifyListeners(); 
  }
}
