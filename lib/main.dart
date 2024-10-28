import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:what_eat_flutter/pages/app.dart';
import 'package:what_eat_flutter/providers/theme_provider.dart';
import 'package:what_eat_flutter/repositories/edamam_api/models/recipe_preview.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(RecipePreviewAdapter());
  await Hive.openBox('favouritesBox');
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const WhatEat(),
    ),
  );
}

class WhatEat extends StatelessWidget {
  const WhatEat({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: "WhatEat!",
      theme: themeProvider.selectedTheme,
      home: const App(), 
    );
  }
}