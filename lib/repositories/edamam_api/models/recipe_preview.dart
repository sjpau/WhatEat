import 'package:hive/hive.dart';
part 'recipe_preview.g.dart';

@HiveType(typeId: 1)
class RecipePreview {
  @HiveField(0)
  final String label;

  @HiveField(1)
  final String image;

  @HiveField(2)
  final String source;

  @HiveField(3)
  final String url;

  @HiveField(4)
  final int calories;

  @HiveField(5)
  final List<String> healthLabels;

  @HiveField(6)
  final int ingredientCount;
  
  @HiveField(7)
  final String shareAs;

  RecipePreview({
    required this.label, 
    required this.image, 
    required this.source, 
    required this.url, 
    required this.calories, 
    required this.healthLabels, 
    required this.ingredientCount, 
    required this.shareAs});
}