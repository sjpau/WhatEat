import 'package:flutter/material.dart';
import 'package:what_eat_flutter/repositories/edamam_api/models/recipe_preview.dart';
import 'package:what_eat_flutter/widgets/recyclers/recipe_tile.dart';

class ResultsPage extends StatelessWidget {
  final List<RecipePreview> recipes;

  const ResultsPage({Key? key, required this.recipes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipes"),
      ),
      body: recipes.isEmpty
      ? const Center(
              child: Text(
                "Oops! It appears that no results were found based on your search term ;(",
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
