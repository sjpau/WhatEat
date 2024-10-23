import 'package:flutter/material.dart';
import 'package:what_eat_flutter/widgets/recyclers/botton_navigation_bar.dart';
import 'package:what_eat_flutter/pages/home.dart';
import 'package:what_eat_flutter/pages/search.dart';
import 'package:what_eat_flutter/pages/favourites.dart';
import 'package:what_eat_flutter/pages/settings.dart';
import 'package:what_eat_flutter/pages/recipe.dart'; // Import RecipePage

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  int _selectedIndex = 0;
  int? _selectedRecipeIndex; 

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _selectedRecipeIndex = null;  
    });
  }

  void _onRecipeSelected(int recipeIndex) {
    setState(() {
      _selectedRecipeIndex = recipeIndex;  
      _selectedIndex = 0; 
    });
  }

  Widget _buildBody() {
    if (_selectedRecipeIndex != null) {
      return RecipePage(recipeIndex: _selectedRecipeIndex!); 
    }

    switch (_selectedIndex) {
      case 0:
        return HomePage(onRecipeSelected: _onRecipeSelected);  
      case 1:
        return const SearchPage();
      case 2:
        return const FavouritesPage();
      case 3:
        return const SettingsPage();
      default:
        return HomePage(onRecipeSelected: _onRecipeSelected);  
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBarMain(
        selectedIndex: _selectedIndex, 
        onItemTapped: _onItemTapped,   
      ),
    );
  }
}
