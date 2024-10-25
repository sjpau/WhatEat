import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String recipes;

  const ResultsPage({Key? key, required this.recipes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipes"),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes),
          );
        },
      ),
    );
  }
}
