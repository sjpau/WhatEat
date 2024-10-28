import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:what_eat_flutter/widgets/recyclers/recipe_tile.dart';

class FavouritesPage extends StatelessWidget {

  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    late List<dynamic> recipes;
    late Box favouritesBox; 
    favouritesBox = Hive.box("favouritesBox");
    recipes = favouritesBox.values.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite Recipes"),
      ),
      body: recipes.isEmpty
      ? const Center(
              child: Text(
                "No favourites were added yet ;(",
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            )
      : ListView.separated(
        itemCount: recipes.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (context, index) {
          return RecipeTile(recipe: recipes[index]);
        }, 
      ),
    );
  }
}

