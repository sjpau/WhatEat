import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:what_eat_flutter/pages/recipe.dart';
import 'package:what_eat_flutter/repositories/edamam_api/models/recipe_preview.dart';

class RecipeTile extends StatelessWidget {
  final RecipePreview recipe;

  const RecipeTile({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return ListTile(
      leading: Image.network(
        recipe.image,
        width: 60,
        height: 60,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) =>
            const Icon(Icons.image_not_supported),
      ),
      title: Text(
        recipe.label,
        style: theme.displaySmall, 
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Calories: ${recipe.calories.toStringAsFixed(0)}',
            style: theme.bodyLarge,
          ),
          Text(
            'Ingredients: ${recipe.ingredientCount}',
            style: theme.bodyMedium,
          ),
        ],
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      onTap: () {
        final favouritesBox = Hive.box('favouritesBox');
        final isFavourite = favouritesBox.containsKey(recipe.url);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipePage(recipe: recipe, isFavourite: isFavourite),
          ),
        );
      },
    );
  }
}
