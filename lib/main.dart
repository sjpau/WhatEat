import 'package:flutter/material.dart';
import 'package:what_eat_flutter/pages/app.dart';
import 'package:what_eat_flutter/repositories/edamam_api/models/recipe_preview.dart';
import 'styles/theme_regular.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(RecipePreviewAdapter());
  await Hive.openBox('favouritesBox');
  runApp(const WhatEat());
}
class WhatEat extends StatelessWidget {
  const WhatEat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatEat!",
      theme: themeRegular,
      home: const App(), 
    );
  }
}