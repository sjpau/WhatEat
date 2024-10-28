import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'theme_preference.g.dart';

@HiveType(typeId: 2)
class ThemePreference {
  @HiveField(0)
  final ThemeData savedTheme;

  ThemePreference({required this.savedTheme});

} 