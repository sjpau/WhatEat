import 'package:flutter/material.dart';
import 'package:what_eat_flutter/widgets/recyclers/botton_navigation_bar.dart';
import 'package:what_eat_flutter/pages/search.dart';
import 'package:what_eat_flutter/pages/favourites.dart';
import 'package:what_eat_flutter/pages/settings.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return const SearchPage();
      case 1:
        return const FavouritesPage();
      case 2:
        return const SettingsPage();
      default:
        return const SearchPage();
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
