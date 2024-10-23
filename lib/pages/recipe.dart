import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  final int recipeIndex;  

  const RecipePage({super.key, required this.recipeIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe $recipeIndex'),
        leading: IconButton(
        icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); 
          },
      ),
      ),
      body: Center(
        child: Text('Details for Recipe $recipeIndex'),
      ),
    );
  }
}
