
class RecipePreview {
  
  RecipePreview({
    required this.label, 
    required this.image, 
    required this.calories, 
    required this.ingredientCount, 
    required this.url, 
    required this.shareAs, 
    required this.source,
    required this.healthLabels
  });

  final String label;
  final String image;
  final int calories;
  final int ingredientCount;
  final String url;
  final String shareAs;
  final String source;
  final List<String> healthLabels;

}