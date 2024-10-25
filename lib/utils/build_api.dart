import 'package:what_eat_flutter/secrets.dart';

String buildApiUrl(Map<String, dynamic> searchParams) {
  String baseUrl = 'https://api.edamam.com/api/recipes/v2?type=public';

  if (searchParams['searchTerm'] != null && searchParams['searchTerm'].isNotEmpty) {
    baseUrl += '&q=${searchParams['searchTerm']}';
  }

  baseUrl += '&app_id=$appId&app_key=$appKey';

  if (searchParams['calories'] != null) {
    var calorieRange = searchParams['calories'];
    if (calorieRange['from'] != null && calorieRange['to'] != null) {
      baseUrl += '&calories=${calorieRange['from']}-${calorieRange['to']}';
    }
  }

  if (searchParams['mealType'] != null && searchParams['mealType'].isNotEmpty) {
    baseUrl += '&mealType=${searchParams['mealType']}';
  }

  if (searchParams['dietaryRestrictions'] != null && searchParams['dietaryRestrictions'].isNotEmpty) {
    List<String> healthFilters = List<String>.from(searchParams['dietaryRestrictions']);
    for (String filter in healthFilters) {
      baseUrl += '&health=$filter';
    }
  }

  return baseUrl;
}
