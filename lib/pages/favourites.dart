import 'package:flutter/material.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});
   @override   State<StatefulWidget> createState() {
    return FavouritesPageState();   } }

class FavouritesPageState extends State<FavouritesPage> {   @override   Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
      ),
    );
} 
}

