import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:what_eat_flutter/repositories/edamam_api/models/recipe_preview.dart';
import 'package:what_eat_flutter/utils/build_api.dart';

class RecipeRepository {
  final Dio _dio = Dio();  
  Future<List<RecipePreview>> fetchRecipes(Map<String, dynamic> searchParams) async {
    String apiUrl = buildApiUrl(searchParams);

    try {
      for (final e in searchParams.entries) {
        debugPrint('${e.key} = ${e.value}');
      }
      debugPrint(apiUrl);
      Response response = await _dio.get(apiUrl);

      if (response.statusCode == 200) {
        debugPrint('Recipes fetched successfully: ${response.toString()}');
        final List<RecipePreview> recipes = extractRecipes(response.data);
        return recipes;
      } else {
        debugPrint('Error fetching recipes: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error making request: $e');
    }
    return [];
  }
}

List<RecipePreview> extractRecipes(Map<String, dynamic> responseData) {
  List<RecipePreview> recipes = [];

  if (responseData.containsKey('hits') && responseData['hits'] is List) {
    for (var hit in responseData['hits']) {
      if (hit.containsKey('recipe')) {
        var recipeData = hit['recipe'];

        String label = recipeData['label'] ?? '';
        String image = recipeData['image'] ?? '';
        String source = recipeData['source'] ?? '';
        String url = recipeData['url'] ?? '';
        String shareAs = recipeData['shareAs'] ?? '';
        int calories = recipeData['calories']?.toInt();
        List<String> healthLabels = List<String>.from(recipeData['healthLabels'] ?? []);
        int ingredientCount = recipeData['ingredients'] != null
            ? recipeData['ingredients'].length
            : 0;

        recipes.add(RecipePreview(
          label: label,
          image: image,
          source: source,
          url: url,
          shareAs: shareAs,
          calories: calories,
          healthLabels: healthLabels,
          ingredientCount: ingredientCount,
        ));
      }
    }
  }

  return recipes;
}

