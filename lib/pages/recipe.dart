import 'package:flutter/material.dart';
import 'package:what_eat_flutter/repositories/edamam_api/models/recipe_preview.dart';
import 'package:url_launcher/url_launcher.dart';

class RecipePage extends StatelessWidget {
  final RecipePreview recipe;

  const RecipePage({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          recipe.label,
          style: theme.appBarTheme.titleTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Scaled Image
            Image.network(
              recipe.image,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.image_not_supported),
            ),
            const SizedBox(height: 16),

            // Calorie and Ingredient Count
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Calories: ${recipe.calories.toStringAsFixed(0)}',
                    style: theme.textTheme.bodyLarge,
                  ),
                  Text(
                    'Ingredients: ${recipe.ingredientCount}',
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16),

                  // Health Labels
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: recipe.healthLabels.map((label) {
                      return Chip(
                        label: Text(label),
                        backgroundColor: theme.chipTheme.backgroundColor,
                        labelStyle: theme.chipTheme.labelStyle,
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                // TODO: Functionality to be implemented
              },
              icon: const Icon(Icons.favorite_border),
              label: const Text("Add to Favorites"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: theme.colorScheme.secondary,
                elevation: 0,
                side: BorderSide(color: theme.colorScheme.secondary),
              ),
            ),

            ElevatedButton(
              onPressed: () async {
                final url = Uri.parse(recipe.url);
                await _launchUrl(url); 
              },
              child: const Text("Full Recipe"),
              style: ElevatedButton.styleFrom(
                foregroundColor: theme.colorScheme.secondary, 
                backgroundColor: theme.scaffoldBackgroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
