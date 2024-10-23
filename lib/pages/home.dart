import 'package:flutter/material.dart';
import 'package:what_eat_flutter/pages/recipe.dart';

class HomePage extends StatefulWidget {
  final Function(int) onRecipeSelected; 

  const HomePage({super.key, required this.onRecipeSelected});

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatEat!"),
      ),
      body: ListView.builder(
        itemCount: 10,  
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Recipe $index"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipePage(recipeIndex: index),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
