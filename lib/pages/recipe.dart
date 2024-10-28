import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:what_eat_flutter/repositories/edamam_api/models/recipe_preview.dart';
import 'package:url_launcher/url_launcher.dart';

class RecipePage extends StatefulWidget {
  final RecipePreview recipe;
  final bool isFavourite;

  const RecipePage({Key? key, required this.recipe, required this.isFavourite})
      : super(key: key);

  @override
  _RecipePageState createState() => _RecipePageState();
}
class _RecipePageState extends State<RecipePage> {
  late bool isFavourite; 
  late Box favouritesBox;

  @override
  void initState() {
    super.initState();
    favouritesBox = Hive.box('favouritesBox');
    isFavourite = widget.isFavourite; 
  }
  void toggleFavorite() {
    setState(() {
      isFavourite = !isFavourite;
    });

    if (isFavourite) {
      favouritesBox.put(widget.recipe.url, widget.recipe);
    } else {
      favouritesBox.delete(widget.recipe.url);
    }
  }


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);


    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.recipe.label,
          style: theme.appBarTheme.titleTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              widget.recipe.image,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.image_not_supported),
            ),
            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Calories: ${widget.recipe.calories.toStringAsFixed(0)}',
                    style: theme.textTheme.bodyLarge,
                  ),
                  Text(
                    'Ingredients: ${widget.recipe.ingredientCount}',
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16),

                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: widget.recipe.healthLabels.map((label) {
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
                setState(() {
                  toggleFavorite();
                });
              },
              icon: !isFavourite ? const Icon(Icons.favorite_border) : const Icon(Icons.favorite),
              label: !isFavourite ? const Text("Add to Favourites") : const Text("Remove from Favourites"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: theme.colorScheme.secondary,
                elevation: 0,
                side: BorderSide(color: theme.colorScheme.secondary),
              ),
            ),

            ElevatedButton(
              onPressed: () async {
                final url = Uri.parse(widget.recipe.url);
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
